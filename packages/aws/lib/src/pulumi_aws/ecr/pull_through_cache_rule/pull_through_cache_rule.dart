import 'package:pulumi/pulumi.dart';
import 'pull_through_cache_rule_args.dart';

/// Provides an Elastic Container Registry Pull Through Cache Rule.
///
/// More information about pull through cache rules, including the set of supported
/// upstream repositories, see [Using pull through cache rules](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.PullThroughCacheRule("example", {
/// ecrRepositoryPrefix: "ecr-public",
/// upstreamRegistryUrl: "public.ecr.aws",
/// credentialArn: "arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.PullThroughCacheRule("example",
/// ecr_repository_prefix="ecr-public",
/// upstream_registry_url="public.ecr.aws",
/// credential_arn="arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecr.PullThroughCacheRule("example", new()
/// {
/// EcrRepositoryPrefix = "ecr-public",
/// UpstreamRegistryUrl = "public.ecr.aws",
/// CredentialArn = "arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.NewPullThroughCacheRule(ctx, "example", &ecr.PullThroughCacheRuleArgs{
/// EcrRepositoryPrefix: pulumi.String("ecr-public"),
/// UpstreamRegistryUrl: pulumi.String("public.ecr.aws"),
/// CredentialArn:       pulumi.String("arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.PullThroughCacheRule;
/// import com.pulumi.aws.ecr.PullThroughCacheRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new PullThroughCacheRule("example", PullThroughCacheRuleArgs.builder()
/// .ecrRepositoryPrefix("ecr-public")
/// .upstreamRegistryUrl("public.ecr.aws")
/// .credentialArn("arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:PullThroughCacheRule
/// properties:
/// ecrRepositoryPrefix: ecr-public
/// upstreamRegistryUrl: public.ecr.aws
/// credentialArn: arn:aws:secretsmanager:us-east-1:123456789:secret:ecr-pullthroughcache/ecrpublic
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a pull-through cache rule using the <span pulumi-lang-nodejs="`ecrRepositoryPrefix`" pulumi-lang-dotnet="`EcrRepositoryPrefix`" pulumi-lang-go="`ecrRepositoryPrefix`" pulumi-lang-python="`ecr_repository_prefix`" pulumi-lang-yaml="`ecrRepositoryPrefix`" pulumi-lang-java="`ecrRepositoryPrefix`">`ecr_repository_prefix`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/pullThroughCacheRule:PullThroughCacheRule example ecr-public
/// ```
class PullThroughCacheRule extends CustomResource {
  /// ARN of the Secret which will be used to authenticate against the registry.
  late final Output<String?> credentialArn;

  /// The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  late final Output<String?> customRoleArn;

  /// The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  late final Output<String> ecrRepositoryPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// The registry URL of the upstream registry to use as the source.
  late final Output<String> upstreamRegistryUrl;

  /// The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  late final Output<String?> upstreamRepositoryPrefix;

  PullThroughCacheRule(
    String name, {
    PullThroughCacheRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/pullThroughCacheRule:PullThroughCacheRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.credentialArn = Output.createUnknown<String?>();
    this.customRoleArn = Output.createUnknown<String?>();
    this.ecrRepositoryPrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.upstreamRegistryUrl = Output.createUnknown<String>();
    this.upstreamRepositoryPrefix = Output.createUnknown<String?>();
  }
}
