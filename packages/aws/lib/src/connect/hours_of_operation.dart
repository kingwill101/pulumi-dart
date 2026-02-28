import 'package:pulumi/pulumi.dart' as pulumi;
import 'hours_of_operation_args.dart';
import 'hours_of_operation_config.dart';

/// Provides an Amazon Connect Hours of Operation resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.HoursOfOperation("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Office Hours",
///     description: "Monday office hours",
///     timeZone: "EST",
///     configs: [
///         {
///             day: "MONDAY",
///             endTime: {
///                 hours: 23,
///                 minutes: 8,
///             },
///             startTime: {
///                 hours: 8,
///                 minutes: 0,
///             },
///         },
///         {
///             day: "TUESDAY",
///             endTime: {
///                 hours: 21,
///                 minutes: 0,
///             },
///             startTime: {
///                 hours: 9,
///                 minutes: 0,
///             },
///         },
///     ],
///     tags: {
///         Name: "Example Hours of Operation",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.HoursOfOperation("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Office Hours",
///     description="Monday office hours",
///     time_zone="EST",
///     configs=[
///         {
///             "day": "MONDAY",
///             "end_time": {
///                 "hours": 23,
///                 "minutes": 8,
///             },
///             "start_time": {
///                 "hours": 8,
///                 "minutes": 0,
///             },
///         },
///         {
///             "day": "TUESDAY",
///             "end_time": {
///                 "hours": 21,
///                 "minutes": 0,
///             },
///             "start_time": {
///                 "hours": 9,
///                 "minutes": 0,
///             },
///         },
///     ],
///     tags={
///         "Name": "Example Hours of Operation",
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
///     var test = new Aws.Connect.HoursOfOperation("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Office Hours",
///         Description = "Monday office hours",
///         TimeZone = "EST",
///         Configs = new[]
///         {
///             new Aws.Connect.Inputs.HoursOfOperationConfigArgs
///             {
///                 Day = "MONDAY",
///                 EndTime = new Aws.Connect.Inputs.HoursOfOperationConfigEndTimeArgs
///                 {
///                     Hours = 23,
///                     Minutes = 8,
///                 },
///                 StartTime = new Aws.Connect.Inputs.HoursOfOperationConfigStartTimeArgs
///                 {
///                     Hours = 8,
///                     Minutes = 0,
///                 },
///             },
///             new Aws.Connect.Inputs.HoursOfOperationConfigArgs
///             {
///                 Day = "TUESDAY",
///                 EndTime = new Aws.Connect.Inputs.HoursOfOperationConfigEndTimeArgs
///                 {
///                     Hours = 21,
///                     Minutes = 0,
///                 },
///                 StartTime = new Aws.Connect.Inputs.HoursOfOperationConfigStartTimeArgs
///                 {
///                     Hours = 9,
///                     Minutes = 0,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Name", "Example Hours of Operation" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewHoursOfOperation(ctx, "test", &connect.HoursOfOperationArgs{
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Office Hours"),
/// 			Description: pulumi.String("Monday office hours"),
/// 			TimeZone:    pulumi.String("EST"),
/// 			Configs: connect.HoursOfOperationConfigArray{
/// 				&connect.HoursOfOperationConfigArgs{
/// 					Day: pulumi.String("MONDAY"),
/// 					EndTime: &connect.HoursOfOperationConfigEndTimeArgs{
/// 						Hours:   pulumi.Int(23),
/// 						Minutes: pulumi.Int(8),
/// 					},
/// 					StartTime: &connect.HoursOfOperationConfigStartTimeArgs{
/// 						Hours:   pulumi.Int(8),
/// 						Minutes: pulumi.Int(0),
/// 					},
/// 				},
/// 				&connect.HoursOfOperationConfigArgs{
/// 					Day: pulumi.String("TUESDAY"),
/// 					EndTime: &connect.HoursOfOperationConfigEndTimeArgs{
/// 						Hours:   pulumi.Int(21),
/// 						Minutes: pulumi.Int(0),
/// 					},
/// 					StartTime: &connect.HoursOfOperationConfigStartTimeArgs{
/// 						Hours:   pulumi.Int(9),
/// 						Minutes: pulumi.Int(0),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Hours of Operation"),
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
/// import com.pulumi.aws.connect.HoursOfOperation;
/// import com.pulumi.aws.connect.HoursOfOperationArgs;
/// import com.pulumi.aws.connect.inputs.HoursOfOperationConfigArgs;
/// import com.pulumi.aws.connect.inputs.HoursOfOperationConfigEndTimeArgs;
/// import com.pulumi.aws.connect.inputs.HoursOfOperationConfigStartTimeArgs;
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
///         var test = new HoursOfOperation("test", HoursOfOperationArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Office Hours")
///             .description("Monday office hours")
///             .timeZone("EST")
///             .configs(
///                 HoursOfOperationConfigArgs.builder()
///                     .day("MONDAY")
///                     .endTime(HoursOfOperationConfigEndTimeArgs.builder()
///                         .hours(23)
///                         .minutes(8)
///                         .build())
///                     .startTime(HoursOfOperationConfigStartTimeArgs.builder()
///                         .hours(8)
///                         .minutes(0)
///                         .build())
///                     .build(),
///                 HoursOfOperationConfigArgs.builder()
///                     .day("TUESDAY")
///                     .endTime(HoursOfOperationConfigEndTimeArgs.builder()
///                         .hours(21)
///                         .minutes(0)
///                         .build())
///                     .startTime(HoursOfOperationConfigStartTimeArgs.builder()
///                         .hours(9)
///                         .minutes(0)
///                         .build())
///                     .build())
///             .tags(Map.of("Name", "Example Hours of Operation"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:HoursOfOperation
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Office Hours
///       description: Monday office hours
///       timeZone: EST
///       configs:
///         - day: MONDAY
///           endTime:
///             hours: 23
///             minutes: 8
///           startTime:
///             hours: 8
///             minutes: 0
///         - day: TUESDAY
///           endTime:
///             hours: 21
///             minutes: 0
///           startTime:
///             hours: 9
///             minutes: 0
///       tags:
///         Name: Example Hours of Operation
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Hours of Operations using the `instance_id` and `hours_of_operation_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/hoursOfOperation:HoursOfOperation example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class HoursOfOperation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Hours of Operation.
  late final pulumi.Output<String> arn;

  /// One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  late final pulumi.Output<List<HoursOfOperationConfig>> configs;

  /// Specifies the description of the Hours of Operation.
  late final pulumi.Output<String?> description;

  /// The identifier for the hours of operation.
  late final pulumi.Output<String> hoursOfOperationId;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// Specifies the name of the Hours of Operation.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies the time zone of the Hours of Operation.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [HoursOfOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HoursOfOperation]. {@macro pulumi_connect_hours_of_operation_hours_of_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HoursOfOperation(
    String name, {
    HoursOfOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/hoursOfOperation:HoursOfOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configs = registerOutput<List<HoursOfOperationConfig>>('configs');
    this.description = registerOutput<String?>('description');
    this.hoursOfOperationId = registerOutput<String>('hoursOfOperationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
