import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_args.dart';
import 'capability_configuration.dart';
import 'capability_state.dart';
import 'capability_timeouts.dart';

/// Manages an EKS Capability for an EKS cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Capability("example", {
///     configuration: {
///         argoCd: {
///             awsIdc: {
///                 idcInstanceArn: "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
///             },
///             namespace: "argocd",
///         },
///     },
///     clusterName: exampleAwsEksCluster.name,
///     capabilityName: "argocd",
///     type: "ARGOCD",
///     roleArn: exampleAwsIamRole.arn,
///     deletePropagationPolicy: "RETAIN",
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
///     configuration={
///         "argo_cd": {
///             "aws_idc": {
///                 "idc_instance_arn": "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
///             },
///             "namespace": "argocd",
///         },
///     },
///     cluster_name=example_aws_eks_cluster["name"],
///     capability_name="argocd",
///     type="ARGOCD",
///     role_arn=example_aws_iam_role["arn"],
///     delete_propagation_policy="RETAIN",
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
///         ClusterName = exampleAwsEksCluster.Name,
///         CapabilityName = "argocd",
///         Type = "ARGOCD",
///         RoleArn = exampleAwsIamRole.Arn,
///         DeletePropagationPolicy = "RETAIN",
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
/// 			Configuration: &eks.CapabilityConfigurationArgs{
/// 				ArgoCd: &eks.CapabilityConfigurationArgoCdArgs{
/// 					AwsIdc: &eks.CapabilityConfigurationArgoCdAwsIdcArgs{
/// 						IdcInstanceArn: pulumi.String("arn:aws:sso:::instance/ssoins-1234567890abcdef0"),
/// 					},
/// 					Namespace: pulumi.String("argocd"),
/// 				},
/// 			},
/// 			ClusterName:             pulumi.Any(exampleAwsEksCluster.Name),
/// 			CapabilityName:          pulumi.String("argocd"),
/// 			Type:                    pulumi.String("ARGOCD"),
/// 			RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 			DeletePropagationPolicy: pulumi.String("RETAIN"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_eks_capability" "example" {
///   configuration = {
///     argo_cd = {
///       aws_idc = {
///         idc_instance_arn = "arn:aws:sso:::instance/ssoins-1234567890abcdef0"
///       }
///       namespace = "argocd"
///     }
///   }
///   cluster_name              = exampleAwsEksCluster.name
///   capability_name           = "argocd"
///   type                      = "ARGOCD"
///   role_arn                  = exampleAwsIamRole.arn
///   delete_propagation_policy = "RETAIN"
///   tags = {
///     "Name" = "example-capability"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .configuration(CapabilityConfigurationArgs.builder()
///                 .argoCd(CapabilityConfigurationArgoCdArgs.builder()
///                     .awsIdc(CapabilityConfigurationArgoCdAwsIdcArgs.builder()
///                         .idcInstanceArn("arn:aws:sso:::instance/ssoins-1234567890abcdef0")
///                         .build())
///                     .namespace("argocd")
///                     .build())
///                 .build())
///             .clusterName(exampleAwsEksCluster.name())
///             .capabilityName("argocd")
///             .type("ARGOCD")
///             .roleArn(exampleAwsIamRole.arn())
///             .deletePropagationPolicy("RETAIN")
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
///       configuration:
///         argoCd:
///           awsIdc:
///             idcInstanceArn: arn:aws:sso:::instance/ssoins-1234567890abcdef0
///           namespace: argocd
///       clusterName: ${exampleAwsEksCluster.name}
///       capabilityName: argocd
///       type: ARGOCD
///       roleArn: ${exampleAwsIamRole.arn}
///       deletePropagationPolicy: RETAIN
///       tags:
///         Name: example-capability
/// ```
///
///
/// ### Controller Log Delivery
///
/// Capability controllers run in AWS-managed infrastructure outside your cluster, and their logs are exposed through [CloudWatch Vended Logs](https://docs.aws.amazon.com/eks/latest/userguide/capabilities-controller-logs.html) rather than the EKS API. Configure delivery with the `aws.cloudwatch.LogDeliverySource`, `aws.cloudwatch.LogDeliveryDestination`, and `aws.cloudwatch.LogDelivery` resources, using the capability ARN as the source. Valid log types are `EKS_CAPABILITY_ACK_LOGS` (ACK), `EKS_CAPABILITY_KRO_LOGS` (kro), and `EKS_CAPABILITY_ARGOCD_APPLICATION_LOGS`, `EKS_CAPABILITY_ARGOCD_APPLICATIONSET_LOGS`, `EKS_CAPABILITY_ARGOCD_COMMITSERVER_LOGS`, `EKS_CAPABILITY_ARGOCD_REPOSERVER_LOGS`, and `EKS_CAPABILITY_ARGOCD_SERVER_LOGS` (Argo CD, one per controller component).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Capability("example", {
///     clusterName: exampleAwsEksCluster.name,
///     capabilityName: "ack",
///     type: "ACK",
///     roleArn: exampleAwsIamRole.arn,
///     deletePropagationPolicy: "RETAIN",
/// });
/// const ack = new aws.cloudwatch.LogGroup("ack", {name: "/aws/eks/example/capabilities/ack"});
/// const ackLogDeliverySource = new aws.cloudwatch.LogDeliverySource("ack", {
///     name: "eks-capability-ack-logs",
///     logType: "EKS_CAPABILITY_ACK_LOGS",
///     resourceArn: example.arn,
/// });
/// const ackLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("ack", {
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: ack.arn,
///     },
///     name: "eks-capability-ack-logs",
/// });
/// const ackLogDelivery = new aws.cloudwatch.LogDelivery("ack", {
///     deliverySourceName: ackLogDeliverySource.name,
///     deliveryDestinationArn: ackLogDeliveryDestination.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Capability("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     capability_name="ack",
///     type="ACK",
///     role_arn=example_aws_iam_role["arn"],
///     delete_propagation_policy="RETAIN")
/// ack = aws.cloudwatch.LogGroup("ack", name="/aws/eks/example/capabilities/ack")
/// ack_log_delivery_source = aws.cloudwatch.LogDeliverySource("ack",
///     name="eks-capability-ack-logs",
///     log_type="EKS_CAPABILITY_ACK_LOGS",
///     resource_arn=example.arn)
/// ack_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("ack",
///     delivery_destination_configuration={
///         "destination_resource_arn": ack.arn,
///     },
///     name="eks-capability-ack-logs")
/// ack_log_delivery = aws.cloudwatch.LogDelivery("ack",
///     delivery_source_name=ack_log_delivery_source.name,
///     delivery_destination_arn=ack_log_delivery_destination.arn)
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
///         CapabilityName = "ack",
///         Type = "ACK",
///         RoleArn = exampleAwsIamRole.Arn,
///         DeletePropagationPolicy = "RETAIN",
///     });
///
///     var ack = new Aws.CloudWatch.LogGroup("ack", new()
///     {
///         Name = "/aws/eks/example/capabilities/ack",
///     });
///
///     var ackLogDeliverySource = new Aws.CloudWatch.LogDeliverySource("ack", new()
///     {
///         Name = "eks-capability-ack-logs",
///         LogType = "EKS_CAPABILITY_ACK_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     var ackLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("ack", new()
///     {
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = ack.Arn,
///         },
///         Name = "eks-capability-ack-logs",
///     });
///
///     var ackLogDelivery = new Aws.CloudWatch.LogDelivery("ack", new()
///     {
///         DeliverySourceName = ackLogDeliverySource.Name,
///         DeliveryDestinationArn = ackLogDeliveryDestination.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eks.NewCapability(ctx, "example", &eks.CapabilityArgs{
/// 			ClusterName:             pulumi.Any(exampleAwsEksCluster.Name),
/// 			CapabilityName:          pulumi.String("ack"),
/// 			Type:                    pulumi.String("ACK"),
/// 			RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 			DeletePropagationPolicy: pulumi.String("RETAIN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ack, err := cloudwatch.NewLogGroup(ctx, "ack", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("/aws/eks/example/capabilities/ack"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ackLogDeliverySource, err := cloudwatch.NewLogDeliverySource(ctx, "ack", &cloudwatch.LogDeliverySourceArgs{
/// 			Name:        pulumi.String("eks-capability-ack-logs"),
/// 			LogType:     pulumi.String("EKS_CAPABILITY_ACK_LOGS"),
/// 			ResourceArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ackLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "ack", &cloudwatch.LogDeliveryDestinationArgs{
/// 			DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// 				DestinationResourceArn: ack.Arn,
/// 			},
/// 			Name: pulumi.String("eks-capability-ack-logs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDelivery(ctx, "ack", &cloudwatch.LogDeliveryArgs{
/// 			DeliverySourceName:     ackLogDeliverySource.Name,
/// 			DeliveryDestinationArn: ackLogDeliveryDestination.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_eks_capability" "example" {
///   cluster_name              = exampleAwsEksCluster.name
///   capability_name           = "ack"
///   type                      = "ACK"
///   role_arn                  = exampleAwsIamRole.arn
///   delete_propagation_policy = "RETAIN"
/// }
/// resource "aws_cloudwatch_loggroup" "ack" {
///   name = "/aws/eks/example/capabilities/ack"
/// }
/// resource "aws_cloudwatch_logdeliverysource" "ack" {
///   name         = "eks-capability-ack-logs"
///   log_type     = "EKS_CAPABILITY_ACK_LOGS"
///   resource_arn = aws_eks_capability.example.arn
/// }
/// resource "aws_cloudwatch_logdeliverydestination" "ack" {
///   delivery_destination_configuration = {
///     destination_resource_arn = aws_cloudwatch_loggroup.ack.arn
///   }
///   name = "eks-capability-ack-logs"
/// }
/// resource "aws_cloudwatch_logdelivery" "ack" {
///   delivery_source_name     = aws_cloudwatch_logdeliverysource.ack.name
///   delivery_destination_arn = aws_cloudwatch_logdeliverydestination.ack.arn
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliverySource;
/// import com.pulumi.aws.cloudwatch.LogDeliverySourceArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.LogDelivery;
/// import com.pulumi.aws.cloudwatch.LogDeliveryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .capabilityName("ack")
///             .type("ACK")
///             .roleArn(exampleAwsIamRole.arn())
///             .deletePropagationPolicy("RETAIN")
///             .build());
///
///         var ack = new LogGroup("ack", LogGroupArgs.builder()
///             .name("/aws/eks/example/capabilities/ack")
///             .build());
///
///         var ackLogDeliverySource = new LogDeliverySource("ackLogDeliverySource", LogDeliverySourceArgs.builder()
///             .name("eks-capability-ack-logs")
///             .logType("EKS_CAPABILITY_ACK_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         var ackLogDeliveryDestination = new LogDeliveryDestination("ackLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(ack.arn())
///                 .build())
///             .name("eks-capability-ack-logs")
///             .build());
///
///         var ackLogDelivery = new LogDelivery("ackLogDelivery", LogDeliveryArgs.builder()
///             .deliverySourceName(ackLogDeliverySource.name())
///             .deliveryDestinationArn(ackLogDeliveryDestination.arn())
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
///       capabilityName: ack
///       type: ACK
///       roleArn: ${exampleAwsIamRole.arn}
///       deletePropagationPolicy: RETAIN
///   ack:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /aws/eks/example/capabilities/ack
///   ackLogDeliverySource:
///     type: aws:cloudwatch:LogDeliverySource
///     name: ack
///     properties:
///       name: eks-capability-ack-logs
///       logType: EKS_CAPABILITY_ACK_LOGS
///       resourceArn: ${example.arn}
///   ackLogDeliveryDestination:
///     type: aws:cloudwatch:LogDeliveryDestination
///     name: ack
///     properties:
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${ack.arn}
///       name: eks-capability-ack-logs
///   ackLogDelivery:
///     type: aws:cloudwatch:LogDelivery
///     name: ack
///     properties:
///       deliverySourceName: ${ackLogDeliverySource.name}
///       deliveryDestinationArn: ${ackLogDeliveryDestination.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `clusterName` (String) Name of the EKS Cluster.
/// * `capabilityName` (String) Name of the capability.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Capabilities using `clusterName` and `capabilityName` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/capability:Capability example example-cluster,example-capability
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
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capabilityName = registerOutput<String>('capabilityName');
    clusterName = registerOutput<String>('clusterName');
    configuration = registerOutput<CapabilityConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletePropagationPolicy = registerOutput<String>('deletePropagationPolicy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapabilityTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Capability] resource's state with the given [name] and [id].
  static Capability get(
    String name,
    pulumi.Input<String> id, {
    CapabilityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Capability._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    capabilityName = registerOutput<String>('capabilityName');
    clusterName = registerOutput<String>('clusterName');
    configuration = registerOutput<CapabilityConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletePropagationPolicy = registerOutput<String>('deletePropagationPolicy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapabilityTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [Capability] resource.
  Capability.reference(String urn)
    : super(
        'aws:eks/capability:Capability',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capabilityName = registerOutput<String>('capabilityName');
    clusterName = registerOutput<String>('clusterName');
    configuration = registerOutput<CapabilityConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletePropagationPolicy = registerOutput<String>('deletePropagationPolicy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapabilityTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
