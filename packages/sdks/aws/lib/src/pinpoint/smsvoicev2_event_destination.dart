import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_event_destination_args.dart';
import 'smsvoicev2_event_destination_cloudwatch_logs_destination.dart';
import 'smsvoicev2_event_destination_kinesis_firehose_destination.dart';
import 'smsvoicev2_event_destination_sns_destination.dart';
import 'smsvoicev2_event_destination_state.dart';

/// Manages an AWS End User Messaging SMS Event Destination.
///
/// An event destination is a location where messaging events are published. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured per event destination. Changing the sink type (e.g., from `snsDestination` to `cloudwatchLogsDestination`) forces resource replacement — AWS's `UpdateEventDestination` rejects sink-type changes with `ConflictException`.
///
/// ## Example Usage
///
/// ### CloudWatch Logs Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2ConfigurationSet("example", {name: "example-configuration-set"});
/// const exampleSmsvoicev2EventDestination = new aws.pinpoint.Smsvoicev2EventDestination("example", {
///     configurationSetName: example.name,
///     eventDestinationName: "example",
///     matchingEventTypes: ["ALL"],
///     cloudwatchLogsDestination: {
///         iamRoleArn: exampleAwsIamRole.arn,
///         logGroupArn: exampleAwsCloudwatchLogGroup.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ConfigurationSet("example", name="example-configuration-set")
/// example_smsvoicev2_event_destination = aws.pinpoint.Smsvoicev2EventDestination("example",
///     configuration_set_name=example.name,
///     event_destination_name="example",
///     matching_event_types=["ALL"],
///     cloudwatch_logs_destination={
///         "iam_role_arn": example_aws_iam_role["arn"],
///         "log_group_arn": example_aws_cloudwatch_log_group["arn"],
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
///     var example = new Aws.Pinpoint.Smsvoicev2ConfigurationSet("example", new()
///     {
///         Name = "example-configuration-set",
///     });
///
///     var exampleSmsvoicev2EventDestination = new Aws.Pinpoint.Smsvoicev2EventDestination("example", new()
///     {
///         ConfigurationSetName = example.Name,
///         EventDestinationName = "example",
///         MatchingEventTypes = new[]
///         {
///             "ALL",
///         },
///         CloudwatchLogsDestination = new Aws.Pinpoint.Inputs.Smsvoicev2EventDestinationCloudwatchLogsDestinationArgs
///         {
///             IamRoleArn = exampleAwsIamRole.Arn,
///             LogGroupArn = exampleAwsCloudwatchLogGroup.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2ConfigurationSet(ctx, "example", &pinpoint.Smsvoicev2ConfigurationSetArgs{
/// 			Name: pulumi.String("example-configuration-set"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2EventDestination(ctx, "example", &pinpoint.Smsvoicev2EventDestinationArgs{
/// 			ConfigurationSetName: example.Name,
/// 			EventDestinationName: pulumi.String("example"),
/// 			MatchingEventTypes: pulumi.StringArray{
/// 				pulumi.String("ALL"),
/// 			},
/// 			CloudwatchLogsDestination: &pinpoint.Smsvoicev2EventDestinationCloudwatchLogsDestinationArgs{
/// 				IamRoleArn:  pulumi.Any(exampleAwsIamRole.Arn),
/// 				LogGroupArn: pulumi.Any(exampleAwsCloudwatchLogGroup.Arn),
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
/// resource "aws_pinpoint_smsvoicev2configurationset" "example" {
///   name = "example-configuration-set"
/// }
/// resource "aws_pinpoint_smsvoicev2eventdestination" "example" {
///   configuration_set_name = aws_pinpoint_smsvoicev2configurationset.example.name
///   event_destination_name = "example"
///   matching_event_types   = ["ALL"]
///   cloudwatch_logs_destination = {
///     iam_role_arn  = exampleAwsIamRole.arn
///     log_group_arn = exampleAwsCloudwatchLogGroup.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSet;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSetArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestination;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestinationArgs;
/// import com.pulumi.aws.pinpoint.inputs.Smsvoicev2EventDestinationCloudwatchLogsDestinationArgs;
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
///         var example = new Smsvoicev2ConfigurationSet("example", Smsvoicev2ConfigurationSetArgs.builder()
///             .name("example-configuration-set")
///             .build());
///
///         var exampleSmsvoicev2EventDestination = new Smsvoicev2EventDestination("exampleSmsvoicev2EventDestination", Smsvoicev2EventDestinationArgs.builder()
///             .configurationSetName(example.name())
///             .eventDestinationName("example")
///             .matchingEventTypes("ALL")
///             .cloudwatchLogsDestination(Smsvoicev2EventDestinationCloudwatchLogsDestinationArgs.builder()
///                 .iamRoleArn(exampleAwsIamRole.arn())
///                 .logGroupArn(exampleAwsCloudwatchLogGroup.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ConfigurationSet
///     properties:
///       name: example-configuration-set
///   exampleSmsvoicev2EventDestination:
///     type: aws:pinpoint:Smsvoicev2EventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.name}
///       eventDestinationName: example
///       matchingEventTypes:
///         - ALL
///       cloudwatchLogsDestination:
///         iamRoleArn: ${exampleAwsIamRole.arn}
///         logGroupArn: ${exampleAwsCloudwatchLogGroup.arn}
/// ```
///
///
/// ### Kinesis Firehose Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2ConfigurationSet("example", {name: "example-configuration-set"});
/// const exampleSmsvoicev2EventDestination = new aws.pinpoint.Smsvoicev2EventDestination("example", {
///     configurationSetName: example.name,
///     eventDestinationName: "example",
///     matchingEventTypes: ["ALL"],
///     kinesisFirehoseDestination: {
///         deliveryStreamArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///         iamRoleArn: exampleAwsIamRole.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ConfigurationSet("example", name="example-configuration-set")
/// example_smsvoicev2_event_destination = aws.pinpoint.Smsvoicev2EventDestination("example",
///     configuration_set_name=example.name,
///     event_destination_name="example",
///     matching_event_types=["ALL"],
///     kinesis_firehose_destination={
///         "delivery_stream_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///         "iam_role_arn": example_aws_iam_role["arn"],
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
///     var example = new Aws.Pinpoint.Smsvoicev2ConfigurationSet("example", new()
///     {
///         Name = "example-configuration-set",
///     });
///
///     var exampleSmsvoicev2EventDestination = new Aws.Pinpoint.Smsvoicev2EventDestination("example", new()
///     {
///         ConfigurationSetName = example.Name,
///         EventDestinationName = "example",
///         MatchingEventTypes = new[]
///         {
///             "ALL",
///         },
///         KinesisFirehoseDestination = new Aws.Pinpoint.Inputs.Smsvoicev2EventDestinationKinesisFirehoseDestinationArgs
///         {
///             DeliveryStreamArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///             IamRoleArn = exampleAwsIamRole.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2ConfigurationSet(ctx, "example", &pinpoint.Smsvoicev2ConfigurationSetArgs{
/// 			Name: pulumi.String("example-configuration-set"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2EventDestination(ctx, "example", &pinpoint.Smsvoicev2EventDestinationArgs{
/// 			ConfigurationSetName: example.Name,
/// 			EventDestinationName: pulumi.String("example"),
/// 			MatchingEventTypes: pulumi.StringArray{
/// 				pulumi.String("ALL"),
/// 			},
/// 			KinesisFirehoseDestination: &pinpoint.Smsvoicev2EventDestinationKinesisFirehoseDestinationArgs{
/// 				DeliveryStreamArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 				IamRoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_pinpoint_smsvoicev2configurationset" "example" {
///   name = "example-configuration-set"
/// }
/// resource "aws_pinpoint_smsvoicev2eventdestination" "example" {
///   configuration_set_name = aws_pinpoint_smsvoicev2configurationset.example.name
///   event_destination_name = "example"
///   matching_event_types   = ["ALL"]
///   kinesis_firehose_destination = {
///     delivery_stream_arn = exampleAwsKinesisFirehoseDeliveryStream.arn
///     iam_role_arn        = exampleAwsIamRole.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSet;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSetArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestination;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestinationArgs;
/// import com.pulumi.aws.pinpoint.inputs.Smsvoicev2EventDestinationKinesisFirehoseDestinationArgs;
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
///         var example = new Smsvoicev2ConfigurationSet("example", Smsvoicev2ConfigurationSetArgs.builder()
///             .name("example-configuration-set")
///             .build());
///
///         var exampleSmsvoicev2EventDestination = new Smsvoicev2EventDestination("exampleSmsvoicev2EventDestination", Smsvoicev2EventDestinationArgs.builder()
///             .configurationSetName(example.name())
///             .eventDestinationName("example")
///             .matchingEventTypes("ALL")
///             .kinesisFirehoseDestination(Smsvoicev2EventDestinationKinesisFirehoseDestinationArgs.builder()
///                 .deliveryStreamArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                 .iamRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ConfigurationSet
///     properties:
///       name: example-configuration-set
///   exampleSmsvoicev2EventDestination:
///     type: aws:pinpoint:Smsvoicev2EventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.name}
///       eventDestinationName: example
///       matchingEventTypes:
///         - ALL
///       kinesisFirehoseDestination:
///         deliveryStreamArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///         iamRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### SNS Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2ConfigurationSet("example", {name: "example-configuration-set"});
/// const exampleSmsvoicev2EventDestination = new aws.pinpoint.Smsvoicev2EventDestination("example", {
///     configurationSetName: example.name,
///     eventDestinationName: "example",
///     matchingEventTypes: ["ALL"],
///     snsDestination: {
///         topicArn: exampleAwsSnsTopic.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ConfigurationSet("example", name="example-configuration-set")
/// example_smsvoicev2_event_destination = aws.pinpoint.Smsvoicev2EventDestination("example",
///     configuration_set_name=example.name,
///     event_destination_name="example",
///     matching_event_types=["ALL"],
///     sns_destination={
///         "topic_arn": example_aws_sns_topic["arn"],
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
///     var example = new Aws.Pinpoint.Smsvoicev2ConfigurationSet("example", new()
///     {
///         Name = "example-configuration-set",
///     });
///
///     var exampleSmsvoicev2EventDestination = new Aws.Pinpoint.Smsvoicev2EventDestination("example", new()
///     {
///         ConfigurationSetName = example.Name,
///         EventDestinationName = "example",
///         MatchingEventTypes = new[]
///         {
///             "ALL",
///         },
///         SnsDestination = new Aws.Pinpoint.Inputs.Smsvoicev2EventDestinationSnsDestinationArgs
///         {
///             TopicArn = exampleAwsSnsTopic.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2ConfigurationSet(ctx, "example", &pinpoint.Smsvoicev2ConfigurationSetArgs{
/// 			Name: pulumi.String("example-configuration-set"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2EventDestination(ctx, "example", &pinpoint.Smsvoicev2EventDestinationArgs{
/// 			ConfigurationSetName: example.Name,
/// 			EventDestinationName: pulumi.String("example"),
/// 			MatchingEventTypes: pulumi.StringArray{
/// 				pulumi.String("ALL"),
/// 			},
/// 			SnsDestination: &pinpoint.Smsvoicev2EventDestinationSnsDestinationArgs{
/// 				TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
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
/// resource "aws_pinpoint_smsvoicev2configurationset" "example" {
///   name = "example-configuration-set"
/// }
/// resource "aws_pinpoint_smsvoicev2eventdestination" "example" {
///   configuration_set_name = aws_pinpoint_smsvoicev2configurationset.example.name
///   event_destination_name = "example"
///   matching_event_types   = ["ALL"]
///   sns_destination = {
///     topic_arn = exampleAwsSnsTopic.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSet;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSetArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestination;
/// import com.pulumi.aws.pinpoint.Smsvoicev2EventDestinationArgs;
/// import com.pulumi.aws.pinpoint.inputs.Smsvoicev2EventDestinationSnsDestinationArgs;
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
///         var example = new Smsvoicev2ConfigurationSet("example", Smsvoicev2ConfigurationSetArgs.builder()
///             .name("example-configuration-set")
///             .build());
///
///         var exampleSmsvoicev2EventDestination = new Smsvoicev2EventDestination("exampleSmsvoicev2EventDestination", Smsvoicev2EventDestinationArgs.builder()
///             .configurationSetName(example.name())
///             .eventDestinationName("example")
///             .matchingEventTypes("ALL")
///             .snsDestination(Smsvoicev2EventDestinationSnsDestinationArgs.builder()
///                 .topicArn(exampleAwsSnsTopic.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ConfigurationSet
///     properties:
///       name: example-configuration-set
///   exampleSmsvoicev2EventDestination:
///     type: aws:pinpoint:Smsvoicev2EventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.name}
///       eventDestinationName: example
///       matchingEventTypes:
///         - ALL
///       snsDestination:
///         topicArn: ${exampleAwsSnsTopic.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `configurationSetName` (String) Name of the configuration set this event destination belongs to.
/// * `eventDestinationName` (String) Name of the event destination.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an event destination using the `configurationSetName` and `eventDestinationName`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2EventDestination:Smsvoicev2EventDestination example "example-configuration-set,example-event-destination"
/// ```
class Smsvoicev2EventDestination extends pulumi.CustomResource {
  /// Send events to Amazon CloudWatch Logs. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `cloudwatchLogsDestination` Block for details.
  late final pulumi.Output<Smsvoicev2EventDestinationCloudwatchLogsDestination?> cloudwatchLogsDestination;
  /// ARN of the parent configuration set.
  late final pulumi.Output<String> configurationSetArn;
  /// Name of the configuration set this event destination belongs to. Changing this forces a new resource.
  late final pulumi.Output<String> configurationSetName;
  /// Whether the event destination is enabled. Defaults to `true`.
  late final pulumi.Output<bool> enabled;
  /// Name of the event destination. Changing this forces a new resource.
  late final pulumi.Output<String> eventDestinationName;
  /// Send events to Amazon Data Firehose. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `kinesisFirehoseDestination` Block for details.
  late final pulumi.Output<Smsvoicev2EventDestinationKinesisFirehoseDestination?> kinesisFirehoseDestination;
  /// Event types for which the destination receives records. See the [AWS API reference](https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_CreateEventDestination.html#pinpoint-CreateEventDestination-request-MatchingEventTypes) for valid values.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> matchingEventTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Send events to Amazon SNS. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `snsDestination` Block for details.
  late final pulumi.Output<Smsvoicev2EventDestinationSnsDestination?> snsDestination;

  /// Creates a new [Smsvoicev2EventDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2EventDestination]. {@macro pulumi_pinpoint_smsvoicev2_event_destination_smsvoicev2_event_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2EventDestination(
    String name, {
    Smsvoicev2EventDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2EventDestination:Smsvoicev2EventDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudwatchLogsDestination = registerOutput<Smsvoicev2EventDestinationCloudwatchLogsDestination?>('cloudwatchLogsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationCloudwatchLogsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationSetArn = registerOutput<String>('configurationSetArn');
    configurationSetName = registerOutput<String>('configurationSetName');
    enabled = registerOutput<bool>('enabled');
    eventDestinationName = registerOutput<String>('eventDestinationName');
    kinesisFirehoseDestination = registerOutput<Smsvoicev2EventDestinationKinesisFirehoseDestination?>('kinesisFirehoseDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationKinesisFirehoseDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matchingEventTypes = registerOutput<List<String>>('matchingEventTypes');
    region = registerOutput<String>('region');
    snsDestination = registerOutput<Smsvoicev2EventDestinationSnsDestination?>('snsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Smsvoicev2EventDestination] resource's state with the given [name] and [id].
  static Smsvoicev2EventDestination get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2EventDestinationState? state,
  }) {
    return Smsvoicev2EventDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Smsvoicev2EventDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2EventDestination:Smsvoicev2EventDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudwatchLogsDestination = registerOutput<Smsvoicev2EventDestinationCloudwatchLogsDestination?>('cloudwatchLogsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationCloudwatchLogsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationSetArn = registerOutput<String>('configurationSetArn');
    configurationSetName = registerOutput<String>('configurationSetName');
    enabled = registerOutput<bool>('enabled');
    eventDestinationName = registerOutput<String>('eventDestinationName');
    kinesisFirehoseDestination = registerOutput<Smsvoicev2EventDestinationKinesisFirehoseDestination?>('kinesisFirehoseDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationKinesisFirehoseDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matchingEventTypes = registerOutput<List<String>>('matchingEventTypes');
    region = registerOutput<String>('region');
    snsDestination = registerOutput<Smsvoicev2EventDestinationSnsDestination?>('snsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
