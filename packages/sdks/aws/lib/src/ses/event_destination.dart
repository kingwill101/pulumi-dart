import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_destination_args.dart';
import 'event_destination_cloudwatch_destination.dart';
import 'event_destination_kinesis_destination.dart';
import 'event_destination_sns_destination.dart';
import 'event_destination_state.dart';

/// Provides an SES event destination
///
/// ## Example Usage
///
/// ### CloudWatch Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cloudwatch = new aws.ses.EventDestination("cloudwatch", {
///     cloudwatchDestinations: [{
///         defaultValue: "default",
///         dimensionName: "dimension",
///         valueSource: "emailHeader",
///     }],
///     name: "event-destination-cloudwatch",
///     configurationSetName: example.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cloudwatch = aws.ses.EventDestination("cloudwatch",
///     cloudwatch_destinations=[{
///         "default_value": "default",
///         "dimension_name": "dimension",
///         "value_source": "emailHeader",
///     }],
///     name="event-destination-cloudwatch",
///     configuration_set_name=example["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudwatch = new Aws.Ses.EventDestination("cloudwatch", new()
///     {
///         CloudwatchDestinations = new[]
///         {
///             new Aws.Ses.Inputs.EventDestinationCloudwatchDestinationArgs
///             {
///                 DefaultValue = "default",
///                 DimensionName = "dimension",
///                 ValueSource = "emailHeader",
///             },
///         },
///         Name = "event-destination-cloudwatch",
///         ConfigurationSetName = example.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewEventDestination(ctx, "cloudwatch", &ses.EventDestinationArgs{
/// 			CloudwatchDestinations: ses.EventDestinationCloudwatchDestinationArray{
/// 				&ses.EventDestinationCloudwatchDestinationArgs{
/// 					DefaultValue:  pulumi.String("default"),
/// 					DimensionName: pulumi.String("dimension"),
/// 					ValueSource:   pulumi.String("emailHeader"),
/// 				},
/// 			},
/// 			Name:                 pulumi.String("event-destination-cloudwatch"),
/// 			ConfigurationSetName: pulumi.Any(example.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
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
/// resource "aws_ses_eventdestination" "cloudwatch" {
///   cloudwatch_destinations {
///     default_value  = "default"
///     dimension_name = "dimension"
///     value_source   = "emailHeader"
///   }
///   name                   = "event-destination-cloudwatch"
///   configuration_set_name = example.name
///   enabled                = true
///   matching_types         = ["bounce", "send"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationCloudwatchDestinationArgs;
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
///         var cloudwatch = new EventDestination("cloudwatch", EventDestinationArgs.builder()
///             .cloudwatchDestinations(EventDestinationCloudwatchDestinationArgs.builder()
///                 .defaultValue("default")
///                 .dimensionName("dimension")
///                 .valueSource("emailHeader")
///                 .build())
///             .name("event-destination-cloudwatch")
///             .configurationSetName(example.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudwatch:
///     type: aws:ses:EventDestination
///     properties:
///       cloudwatchDestinations:
///         - defaultValue: default
///           dimensionName: dimension
///           valueSource: emailHeader
///       name: event-destination-cloudwatch
///       configurationSetName: ${example.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
/// ```
///
///
/// ### Kinesis Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const kinesis = new aws.ses.EventDestination("kinesis", {
///     kinesisDestination: {
///         streamArn: example.arn,
///         roleArn: exampleAwsIamRole.arn,
///     },
///     name: "event-destination-kinesis",
///     configurationSetName: exampleAwsSesConfigurationSet.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// kinesis = aws.ses.EventDestination("kinesis",
///     kinesis_destination={
///         "stream_arn": example["arn"],
///         "role_arn": example_aws_iam_role["arn"],
///     },
///     name="event-destination-kinesis",
///     configuration_set_name=example_aws_ses_configuration_set["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kinesis = new Aws.Ses.EventDestination("kinesis", new()
///     {
///         KinesisDestination = new Aws.Ses.Inputs.EventDestinationKinesisDestinationArgs
///         {
///             StreamArn = example.Arn,
///             RoleArn = exampleAwsIamRole.Arn,
///         },
///         Name = "event-destination-kinesis",
///         ConfigurationSetName = exampleAwsSesConfigurationSet.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewEventDestination(ctx, "kinesis", &ses.EventDestinationArgs{
/// 			KinesisDestination: &ses.EventDestinationKinesisDestinationArgs{
/// 				StreamArn: pulumi.Any(example.Arn),
/// 				RoleArn:   pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			Name:                 pulumi.String("event-destination-kinesis"),
/// 			ConfigurationSetName: pulumi.Any(exampleAwsSesConfigurationSet.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
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
/// resource "aws_ses_eventdestination" "kinesis" {
///   kinesis_destination = {
///     stream_arn = example.arn
///     role_arn   = exampleAwsIamRole.arn
///   }
///   name                   = "event-destination-kinesis"
///   configuration_set_name = exampleAwsSesConfigurationSet.name
///   enabled                = true
///   matching_types         = ["bounce", "send"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationKinesisDestinationArgs;
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
///         var kinesis = new EventDestination("kinesis", EventDestinationArgs.builder()
///             .kinesisDestination(EventDestinationKinesisDestinationArgs.builder()
///                 .streamArn(example.arn())
///                 .roleArn(exampleAwsIamRole.arn())
///                 .build())
///             .name("event-destination-kinesis")
///             .configurationSetName(exampleAwsSesConfigurationSet.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kinesis:
///     type: aws:ses:EventDestination
///     properties:
///       kinesisDestination:
///         streamArn: ${example.arn}
///         roleArn: ${exampleAwsIamRole.arn}
///       name: event-destination-kinesis
///       configurationSetName: ${exampleAwsSesConfigurationSet.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
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
/// const sns = new aws.ses.EventDestination("sns", {
///     snsDestination: {
///         topicArn: example.arn,
///     },
///     name: "event-destination-sns",
///     configurationSetName: exampleAwsSesConfigurationSet.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sns = aws.ses.EventDestination("sns",
///     sns_destination={
///         "topic_arn": example["arn"],
///     },
///     name="event-destination-sns",
///     configuration_set_name=example_aws_ses_configuration_set["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sns = new Aws.Ses.EventDestination("sns", new()
///     {
///         SnsDestination = new Aws.Ses.Inputs.EventDestinationSnsDestinationArgs
///         {
///             TopicArn = example.Arn,
///         },
///         Name = "event-destination-sns",
///         ConfigurationSetName = exampleAwsSesConfigurationSet.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewEventDestination(ctx, "sns", &ses.EventDestinationArgs{
/// 			SnsDestination: &ses.EventDestinationSnsDestinationArgs{
/// 				TopicArn: pulumi.Any(example.Arn),
/// 			},
/// 			Name:                 pulumi.String("event-destination-sns"),
/// 			ConfigurationSetName: pulumi.Any(exampleAwsSesConfigurationSet.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
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
/// resource "aws_ses_eventdestination" "sns" {
///   sns_destination = {
///     topic_arn = example.arn
///   }
///   name                   = "event-destination-sns"
///   configuration_set_name = exampleAwsSesConfigurationSet.name
///   enabled                = true
///   matching_types         = ["bounce", "send"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationSnsDestinationArgs;
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
///         var sns = new EventDestination("sns", EventDestinationArgs.builder()
///             .snsDestination(EventDestinationSnsDestinationArgs.builder()
///                 .topicArn(example.arn())
///                 .build())
///             .name("event-destination-sns")
///             .configurationSetName(exampleAwsSesConfigurationSet.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sns:
///     type: aws:ses:EventDestination
///     properties:
///       snsDestination:
///         topicArn: ${example.arn}
///       name: event-destination-sns
///       configurationSetName: ${exampleAwsSesConfigurationSet.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES event destinations using `configurationSetName` together with the event destination's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/eventDestination:EventDestination sns some-configuration-set-test/event-destination-sns
/// ```
class EventDestination extends pulumi.CustomResource {
  /// SES event destination ARN.
  late final pulumi.Output<String> arn;
  /// CloudWatch destination for the events
  late final pulumi.Output<List<EventDestinationCloudwatchDestination>?> cloudwatchDestinations;
  /// Name of the configuration set
  late final pulumi.Output<String> configurationSetName;
  /// If true, the event destination will be enabled
  late final pulumi.Output<bool?> enabled;
  /// Send the events to a kinesis firehose destination
  late final pulumi.Output<EventDestinationKinesisDestination?> kinesisDestination;
  /// List of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  late final pulumi.Output<List<String>> matchingTypes;
  /// Name of the event destination
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Send the events to an SNS Topic destination
  ///
  /// &gt; **NOTE:** You can specify `"cloudwatchDestination"` or `"kinesisDestination"` but not both
  late final pulumi.Output<EventDestinationSnsDestination?> snsDestination;

  /// Creates a new [EventDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventDestination]. {@macro pulumi_ses_event_destination_event_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventDestination(
    String name, {
    EventDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/eventDestination:EventDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchDestinations = registerOutput<List<EventDestinationCloudwatchDestination>?>('cloudwatchDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventDestinationCloudwatchDestination>(guardedValue, (value) => EventDestinationCloudwatchDestination.fromMap((value as Map).cast<String, dynamic>())); });
    configurationSetName = registerOutput<String>('configurationSetName');
    enabled = registerOutput<bool?>('enabled');
    kinesisDestination = registerOutput<EventDestinationKinesisDestination?>('kinesisDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationKinesisDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matchingTypes = registerOutput<List<String>>('matchingTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    snsDestination = registerOutput<EventDestinationSnsDestination?>('snsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EventDestination] resource's state with the given [name] and [id].
  static EventDestination get(
    String name,
    pulumi.Input<String> id, {
    EventDestinationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/eventDestination:EventDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchDestinations = registerOutput<List<EventDestinationCloudwatchDestination>?>('cloudwatchDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventDestinationCloudwatchDestination>(guardedValue, (value) => EventDestinationCloudwatchDestination.fromMap((value as Map).cast<String, dynamic>())); });
    configurationSetName = registerOutput<String>('configurationSetName');
    enabled = registerOutput<bool?>('enabled');
    kinesisDestination = registerOutput<EventDestinationKinesisDestination?>('kinesisDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationKinesisDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matchingTypes = registerOutput<List<String>>('matchingTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    snsDestination = registerOutput<EventDestinationSnsDestination?>('snsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EventDestination] resource.
  EventDestination.reference(String urn)
    : super(
        'aws:ses/eventDestination:EventDestination',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cloudwatchDestinations = registerOutput<List<EventDestinationCloudwatchDestination>?>('cloudwatchDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventDestinationCloudwatchDestination>(guardedValue, (value) => EventDestinationCloudwatchDestination.fromMap((value as Map).cast<String, dynamic>())); });
    configurationSetName = registerOutput<String>('configurationSetName');
    enabled = registerOutput<bool?>('enabled');
    kinesisDestination = registerOutput<EventDestinationKinesisDestination?>('kinesisDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationKinesisDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matchingTypes = registerOutput<List<String>>('matchingTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    snsDestination = registerOutput<EventDestinationSnsDestination?>('snsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
