import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;

class LambdaConfig {
  final String language;
  final String handler;
  final String runtime;

  const LambdaConfig({
    required this.language,
    required this.handler,
    required this.runtime,
  });
}

class MultiLanguageLambdaStack extends pulumi.Stack {
  MultiLanguageLambdaStack() {
    final role = aws.iam.Role(
      'lambdarole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Effect': 'Allow',
            },
          ],
        }).input(),
        managedPolicyArns: [
          'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
        ].input(),
      ),
    );

    const lambdaSetup = <LambdaConfig>[
      LambdaConfig(
        language: 'dotnet',
        handler: 'DotnetLambda::Lambda.Function::FunctionHandler',
        runtime: 'dotnet8',
      ),
      LambdaConfig(
        language: 'go',
        handler: 'bootstrap',
        runtime: 'provided.al2023',
      ),
      LambdaConfig(
        language: 'typescript',
        handler: 'index.handler',
        runtime: 'nodejs20.x',
      ),
      LambdaConfig(
        language: 'python',
        handler: 'lambda.handler',
        runtime: 'python3.12',
      ),
    ];

    final createdLabel = DateTime.now().millisecondsSinceEpoch.toString();

    for (final lambda in lambdaSetup) {
      final buildLambdaCode = docker_build.index.Image(
        '${lambda.language}-build-code',
        args: docker_build.index.ImageArgs(
          push: false.input(),
          context: docker_build.index
              .BuildContext(location: './${lambda.language}-lambda'.input())
              .input(),
          dockerfile: docker_build.index
              .Dockerfile(
                location: './${lambda.language}-lambda/Dockerfile'.input(),
              )
              .input(),
          exports: [
            docker_build.index.Export(
              local: docker_build.index
                  .ExportLocal(dest: './dist/${lambda.language}'.input())
                  .input(),
            ),
          ].input(),
          labels: {'created': createdLabel}.input(),
        ),
      );

      aws.lambda.FunctionType(
        '${lambda.language}-lambda',
        args: aws.lambda.FunctionArgs(
          role: role.arn,
          code: pulumi.AssetArchive({
            '.': pulumi.FileArchive('./dist/${lambda.language}'),
          }).input(),
          runtime: lambda.runtime.input(),
          handler: lambda.handler.input(),
        ),
        options: pulumi.CustomResourceOptions(dependsOn: [buildLambdaCode]),
      );
    }
  }
}
