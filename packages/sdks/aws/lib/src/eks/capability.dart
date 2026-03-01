import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_args.dart';
import 'capability_configuration.dart';
import 'capability_state.dart';
import 'capability_timeouts.dart';

/// Manages an EKS Capability for an EKS cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Capability("example", {
///     clusterName: exampleAwsEksCluster.name,
///     capabilityName: "argocd",
///     type: "ARGOCD",
///     roleArn: exampleAwsIamRole.arn,
///     deletePropagationPolicy: "RETAIN",
///     configuration: {
///         argoCd: {
///             awsIdc: {
///                 idcInstanceArn: "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
///             },
///             namespace: "argocd",
///         },
///     },
///     tags: {
///         Name: "example-capability",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Capability("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     capability_name="argocd",
///     type="ARGOCD",
///     role_arn=example_aws_iam_role["arn"],
///     delete_propagation_policy="RETAIN",
///     configuration={
///         "argo_cd": {
///             "aws_idc": {
///                 "idc_instance_arn": "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
///             },
///             "namespace": "argocd",
///         },
///     },
///     tags={
///         "Name": "example-capability",
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
///     var example = new Aws.Eks.Capability("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         CapabilityName = "argocd",
///         Type = "ARGOCD",
///         RoleArn = exampleAwsIamRole.Arn,
///         DeletePropagationPolicy = "RETAIN",
///         Configuration = new Aws.Eks.Inputs.CapabilityConfigurationArgs
///         {
///             ArgoCd = new Aws.Eks.Inputs.CapabilityConfigurationArgoCdArgs
///             {
///                 AwsIdc = new Aws.Eks.Inputs.CapabilityConfigurationArgoCdAwsIdcArgs
///                 {
///                     IdcInstanceArn = "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
///                 },
///                 Namespace = "argocd",
///             },
///         },
///         Tags =
///         {
///             { "Name", "example-capability" },
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
/// 		_, err := eks.NewCapability(ctx, "example", &eks.CapabilityArgs{
/// 			ClusterName:             pulumi.Any(exampleAwsEksCluster.Name),
/// 			CapabilityName:          pulumi.String("argocd"),
/// 			Type:                    pulumi.String("ARGOCD"),
/// 			RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 			DeletePropagationPolicy: pulumi.String("RETAIN"),
/// 			Configuration: &eks.CapabilityConfigurationArgs{
/// 				ArgoCd: &eks.CapabilityConfigurationArgoCdArgs{
/// 					AwsIdc: &eks.CapabilityConfigurationArgoCdAwsIdcArgs{
/// 						IdcInstanceArn: pulumi.String("arn:aws:sso:::instance/ssoins-1234567890abcdef0"),
/// 					},
/// 					Namespace: pulumi.String("argocd"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-capability"),
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
/// import com.pulumi.aws.eks.Capability;
/// import com.pulumi.aws.eks.CapabilityArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgoCdArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgoCdAwsIdcArgs;
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
///         var example = new Capability("example", CapabilityArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .capabilityName("argocd")
///             .type("ARGOCD")
///             .roleArn(exampleAwsIamRole.arn())
///             .deletePropagationPolicy("RETAIN")
///             .configuration(CapabilityConfigurationArgs.builder()
///                 .argoCd(CapabilityConfigurationArgoCdArgs.builder()
///                     .awsIdc(CapabilityConfigurationArgoCdAwsIdcArgs.builder()
///                         .idcInstanceArn("arn:aws:sso:::instance/ssoins-1234567890abcdef0")
///                         .build())
///                     .namespace("argocd")
///                     .build())
///                 .build())
///             .tags(Map.of("Name", "example-capability"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Capability
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       capabilityName: argocd
///       type: ARGOCD
///       roleArn: ${exampleAwsIamRole.arn}
///       deletePropagationPolicy: RETAIN
///       configuration:
///         argoCd:
///           awsIdc:
///             idcInstanceArn: arn:aws:sso:::instance/ssoins-1234567890abcdef0
///           namespace: argocd
///       tags:
///         Name: example-capability
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Capability using the `cluster_name` and `capability_name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/capability:Capability example my-cluster,my-capability
/// ```
class Capability extends pulumi.CustomResource {
  /// ARN of the capability.
  late final pulumi.Output<String> arn;
  /// Name of the capability. Must be unique within the cluster.
  late final pulumi.Output<String> capabilityName;
  /// Name of the EKS cluster.
  late final pulumi.Output<String> clusterName;
  /// Configuration for the capability. See `configuration` below.
  late final pulumi.Output<CapabilityConfiguration?> configuration;
  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  late final pulumi.Output<String> deletePropagationPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role to associate with the capability.
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CapabilityTimeouts?> timeouts;
  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  late final pulumi.Output<String> type;
  /// Version of the capability.
  late final pulumi.Output<String> version;

  /// Creates a new [Capability].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Capability]. {@macro pulumi_eks_capability_capability_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Capability(
    String name, {
    CapabilityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/capability:Capability',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capabilityName = registerOutput<String>('capabilityName');
    this.clusterName = registerOutput<String>('clusterName');
    this.configuration = registerOutput<CapabilityConfiguration?>('configuration');
    this.deletePropagationPolicy = registerOutput<String>('deletePropagationPolicy');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapabilityTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [Capability] resource's state with the given [name] and [id].
  static Capability get(
    String name,
    pulumi.Input<String> id, {
    CapabilityState? state,
  }) {
    return Capability._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Capability._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/capability:Capability',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capabilityName = registerOutput<String>('capabilityName');
    this.clusterName = registerOutput<String>('clusterName');
    this.configuration = registerOutput<CapabilityConfiguration?>('configuration');
    this.deletePropagationPolicy = registerOutput<String>('deletePropagationPolicy');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapabilityTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
  }
}
