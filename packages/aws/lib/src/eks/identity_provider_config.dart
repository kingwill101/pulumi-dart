import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_config_args.dart';
import 'identity_provider_config_oidc.dart';

/// Manages an EKS Identity Provider Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.IdentityProviderConfig("example", {
///     clusterName: exampleAwsEksCluster.name,
///     oidc: {
///         clientId: "your client_id",
///         identityProviderConfigName: "example",
///         issuerUrl: "your issuer_url",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.IdentityProviderConfig("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     oidc={
///         "client_id": "your client_id",
///         "identity_provider_config_name": "example",
///         "issuer_url": "your issuer_url",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.IdentityProviderConfig("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         Oidc = new Aws.Eks.Inputs.IdentityProviderConfigOidcArgs
///         {
///             ClientId = "your client_id",
///             IdentityProviderConfigName = "example",
///             IssuerUrl = "your issuer_url",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eks.NewIdentityProviderConfig(ctx, "example", &eks.IdentityProviderConfigArgs{
/// 			ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// 			Oidc: &eks.IdentityProviderConfigOidcArgs{
/// 				ClientId:                   pulumi.String("your client_id"),
/// 				IdentityProviderConfigName: pulumi.String("example"),
/// 				IssuerUrl:                  pulumi.String("your issuer_url"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.IdentityProviderConfig;
/// import com.pulumi.aws.eks.IdentityProviderConfigArgs;
/// import com.pulumi.aws.eks.inputs.IdentityProviderConfigOidcArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new IdentityProviderConfig("example", IdentityProviderConfigArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .oidc(IdentityProviderConfigOidcArgs.builder()
///                 .clientId("your client_id")
///                 .identityProviderConfigName("example")
///                 .issuerUrl("your issuer_url")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:IdentityProviderConfig
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       oidc:
///         clientId: your client_id
///         identityProviderConfigName: example
///         issuerUrl: your issuer_url
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Identity Provider Configurations using the `cluster_name` and `identity_provider_config_name` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/identityProviderConfig:IdentityProviderConfig my_identity_provider_config my_cluster:my_identity_provider_config
/// ```
class IdentityProviderConfig extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EKS Identity Provider Configuration.
  late final pulumi.Output<String> arn;

  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;

  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  late final pulumi.Output<IdentityProviderConfigOidc> oidc;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the EKS Identity Provider Configuration.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IdentityProviderConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderConfig]. {@macro pulumi_eks_identity_provider_config_identity_provider_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderConfig(
    String name, {
    IdentityProviderConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:eks/identityProviderConfig:IdentityProviderConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.clusterName = registerOutput<String>('clusterName');
    this.oidc = registerOutput<IdentityProviderConfigOidc>('oidc');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
