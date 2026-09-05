import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_args.dart';
import 'resource_set_resource.dart';
import 'resource_set_state.dart';

/// Provides an AWS Route 53 Recovery Readiness Resource Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoveryreadiness.ResourceSet("example", {
///     resources: [{
///         resourceArn: exampleAwsCloudwatchMetricAlarm.arn,
///     }],
///     resourceSetName: my_cw_alarm_set,
///     resourceSetType: "AWS::CloudWatch::Alarm",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoveryreadiness.ResourceSet("example",
///     resources=[{
///         "resource_arn": example_aws_cloudwatch_metric_alarm["arn"],
///     }],
///     resource_set_name=my_cw_alarm_set,
///     resource_set_type="AWS::CloudWatch::Alarm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53RecoveryReadiness.ResourceSet("example", new()
///     {
///         Resources = new[]
///         {
///             new Aws.Route53RecoveryReadiness.Inputs.ResourceSetResourceArgs
///             {
///                 ResourceArn = exampleAwsCloudwatchMetricAlarm.Arn,
///             },
///         },
///         ResourceSetName = my_cw_alarm_set,
///         ResourceSetType = "AWS::CloudWatch::Alarm",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoveryreadiness"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53recoveryreadiness.NewResourceSet(ctx, "example", &route53recoveryreadiness.ResourceSetArgs{
/// 			Resources: route53recoveryreadiness.ResourceSetResourceArray{
/// 				&route53recoveryreadiness.ResourceSetResourceArgs{
/// 					ResourceArn: pulumi.Any(exampleAwsCloudwatchMetricAlarm.Arn),
/// 				},
/// 			},
/// 			ResourceSetName: pulumi.Any(my_cw_alarm_set),
/// 			ResourceSetType: pulumi.String("AWS::CloudWatch::Alarm"),
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
/// resource "aws_route53recoveryreadiness_resourceset" "example" {
///   resources {
///     resource_arn = exampleAwsCloudwatchMetricAlarm.arn
///   }
///   resource_set_name = my-cw-alarm-set
///   resource_set_type = "AWS::CloudWatch::Alarm"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53recoveryreadiness.ResourceSet;
/// import com.pulumi.aws.route53recoveryreadiness.ResourceSetArgs;
/// import com.pulumi.aws.route53recoveryreadiness.inputs.ResourceSetResourceArgs;
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
///         var example = new ResourceSet("example", ResourceSetArgs.builder()
///             .resources(ResourceSetResourceArgs.builder()
///                 .resourceArn(exampleAwsCloudwatchMetricAlarm.arn())
///                 .build())
///             .resourceSetName(my_cw_alarm_set)
///             .resourceSetType("AWS::CloudWatch::Alarm")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoveryreadiness:ResourceSet
///     properties:
///       resources:
///         - resourceArn: ${exampleAwsCloudwatchMetricAlarm.arn}
///       resourceSetName: ${["my-cw-alarm-set"]}
///       resourceSetType: AWS::CloudWatch::Alarm
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness resource set name using the resource set name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/resourceSet:ResourceSet my-cw-alarm-set example
/// ```
class ResourceSet extends pulumi.CustomResource {
  /// ARN of the resource set
  /// * `resources.#.component_id` - Unique identified for DNS Target Resources, use for readiness checks.
  late final pulumi.Output<String> arn;
  /// Unique name describing the resource set.
  late final pulumi.Output<String> resourceSetName;
  /// Type of the resources in the resource set.
  late final pulumi.Output<String> resourceSetType;
  /// List of resources to add to this resource set. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<ResourceSetResource>> resources;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResourceSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSet]. {@macro pulumi_route53_recovery_readiness_resource_set_resource_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSet(
    String name, {
    ResourceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/resourceSet:ResourceSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    resourceSetName = registerOutput<String>('resourceSetName');
    resourceSetType = registerOutput<String>('resourceSetType');
    resources = registerOutput<List<ResourceSetResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceSetResource>(guardedValue, (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ResourceSet] resource's state with the given [name] and [id].
  static ResourceSet get(
    String name,
    pulumi.Input<String> id, {
    ResourceSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/resourceSet:ResourceSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    resourceSetName = registerOutput<String>('resourceSetName');
    resourceSetType = registerOutput<String>('resourceSetType');
    resources = registerOutput<List<ResourceSetResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceSetResource>(guardedValue, (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ResourceSet] resource.
  ResourceSet.reference(String urn)
    : super(
        'aws:route53recoveryreadiness/resourceSet:ResourceSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    resourceSetName = registerOutput<String>('resourceSetName');
    resourceSetType = registerOutput<String>('resourceSetType');
    resources = registerOutput<List<ResourceSetResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceSetResource>(guardedValue, (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
