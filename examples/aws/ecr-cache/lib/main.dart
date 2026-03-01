import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

Future<void> run() async {
  final config = pulumi.Config();
  final dockerHubUsername = config.get('dockerHubUsername');
  final gitHubUsername = config.get('gitHubUsername');
  final gitLabUsername = config.get('gitLabUsername');

  final pullThroughCacheEcr = aws.ecr.Repository(
    'pullThroughCacheECR',
    args: aws.ecr.RepositoryArgs(name: 'pull-through-cache-ecr'.input()),
  );

  if (dockerHubUsername != null) {
    final dockerHubSecret = aws.secretsmanager.Secret(
      'ecrPullThroughCacheDockerHubSecret',
      args: aws.secretsmanager.SecretArgs(
        name: 'ecr-pullthroughcache/dockerHubSecret'.input(),
        recoveryWindowInDays: 0.input(),
      ),
    );

    aws.secretsmanager.SecretVersion(
      'dockerHubSecretValue',
      args: aws.secretsmanager.SecretVersionArgs(
        secretId: dockerHubSecret.id,
        secretString: jsonEncode({
          'username': dockerHubUsername,
          'accessToken': config.require('dockerHubAccessToken'),
        }).input(),
      ),
    );

    aws.ecr.PullThroughCacheRule(
      'dockerHubCacheRule',
      args: aws.ecr.PullThroughCacheRuleArgs(
        ecrRepositoryPrefix: 'docker-hub'.input(),
        upstreamRegistryUrl: 'registry-1.docker.io'.input(),
        credentialArn: dockerHubSecret.arn,
      ),
    );
  }

  final k8sCacheRule = aws.ecr.PullThroughCacheRule(
    'k8sCacheRule',
    args: aws.ecr.PullThroughCacheRuleArgs(
      ecrRepositoryPrefix: 'k8si0'.input(),
      upstreamRegistryUrl: 'registry.k8s.io'.input(),
    ),
  );

  if (gitHubUsername != null) {
    final gitHubSecret = aws.secretsmanager.Secret(
      'ecrPullThroughCacheGitHubSecret',
      args: aws.secretsmanager.SecretArgs(
        name: 'ecr-pullthroughcache/githubSecret'.input(),
        recoveryWindowInDays: 0.input(),
      ),
    );

    aws.secretsmanager.SecretVersion(
      'gitHubSecretValue',
      args: aws.secretsmanager.SecretVersionArgs(
        secretId: gitHubSecret.id,
        secretString: jsonEncode({
          'username': gitHubUsername,
          'accessToken': config.require('gitHubAccessToken'),
        }).input(),
      ),
    );

    aws.ecr.PullThroughCacheRule(
      'githubCacheRule',
      args: aws.ecr.PullThroughCacheRuleArgs(
        ecrRepositoryPrefix: 'github'.input(),
        upstreamRegistryUrl: 'ghcr.io'.input(),
        credentialArn: gitHubSecret.arn,
      ),
    );
  }

  if (gitLabUsername != null) {
    final gitLabSecret = aws.secretsmanager.Secret(
      'ecrPullThroughCacheGitLabSecret',
      args: aws.secretsmanager.SecretArgs(
        name: 'ecr-pullthroughcache/gitLabSecret'.input(),
        recoveryWindowInDays: 0.input(),
      ),
    );

    aws.secretsmanager.SecretVersion(
      'gitLabSecretValue',
      args: aws.secretsmanager.SecretVersionArgs(
        secretId: gitLabSecret.id,
        secretString: jsonEncode({
          'username': gitLabUsername,
          'accessToken': config.require('gitLabAccessToken'),
        }).input(),
      ),
    );

    aws.ecr.PullThroughCacheRule(
      'gitLabCacheRule',
      args: aws.ecr.PullThroughCacheRuleArgs(
        ecrRepositoryPrefix: 'gitlab'.input(),
        upstreamRegistryUrl: 'registry.gitlab.com'.input(),
        credentialArn: gitLabSecret.arn,
      ),
    );
  }

  pulumi.export('pullThroughCacheECRRepositoryUrl', pullThroughCacheEcr.repositoryUrl);
  pulumi.export('dockerHubPrefix', dockerHubUsername != null ? 'docker-hub' : '');
  pulumi.export('k8sPrefix', k8sCacheRule.ecrRepositoryPrefix);
  pulumi.export('githubPrefix', gitHubUsername != null ? 'github' : '');
  pulumi.export('gitlabPrefix', gitLabUsername != null ? 'gitlab' : '');
}
