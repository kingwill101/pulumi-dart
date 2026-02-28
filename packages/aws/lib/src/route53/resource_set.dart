import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_args.dart';
import 'resource_set_resource.dart';

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
///     resourceSetName: my_cw_alarm_set,
///     resourceSetType: "AWS::CloudWatch::Alarm",
///     resources: [{
///         resourceArn: exampleAwsCloudwatchMetricAlarm.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoveryreadiness.ResourceSet("example",
///     resource_set_name=my_cw_alarm_set,
///     resource_set_type="AWS::CloudWatch::Alarm",
///     resources=[{
///         "resource_arn": example_aws_cloudwatch_metric_alarm["arn"],
///     }])
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
///         ResourceSetName = my_cw_alarm_set,
///         ResourceSetType = "AWS::CloudWatch::Alarm",
///         Resources = new[]
///         {
///             new Aws.Route53RecoveryReadiness.Inputs.ResourceSetResourceArgs
///             {
///                 ResourceArn = exampleAwsCloudwatchMetricAlarm.Arn,
///             },
///         },
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
/// 			ResourceSetName: pulumi.Any(my_cw_alarm_set),
/// 			ResourceSetType: pulumi.String("AWS::CloudWatch::Alarm"),
/// 			Resources: route53recoveryreadiness.ResourceSetResourceArray{
/// 				&route53recoveryreadiness.ResourceSetResourceArgs{
/// 					ResourceArn: pulumi.Any(exampleAwsCloudwatchMetricAlarm.Arn),
/// 				},
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
/// import com.pulumi.aws.route53recoveryreadiness.ResourceSet;
/// import com.pulumi.aws.route53recoveryreadiness.ResourceSetArgs;
/// import com.pulumi.aws.route53recoveryreadiness.inputs.ResourceSetResourceArgs;
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
///         var example = new ResourceSet("example", ResourceSetArgs.builder()
///             .resourceSetName(my_cw_alarm_set)
///             .resourceSetType("AWS::CloudWatch::Alarm")
///             .resources(ResourceSetResourceArgs.builder()
///                 .resourceArn(exampleAwsCloudwatchMetricAlarm.arn())
///                 .build())
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
///       resourceSetName: ${["my-cw-alarm-set"]}
///       resourceSetType: AWS::CloudWatch::Alarm
///       resources:
///         - resourceArn: ${exampleAwsCloudwatchMetricAlarm.arn}
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

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.resourceSetName = registerOutput<String>('resourceSetName');
    this.resourceSetType = registerOutput<String>('resourceSetType');
    this.resources = registerOutput<List<ResourceSetResource>>('resources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
