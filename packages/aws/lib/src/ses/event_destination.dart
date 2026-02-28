import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_destination_args.dart';
import 'event_destination_cloudwatch_destination.dart';
import 'event_destination_kinesis_destination.dart';
import 'event_destination_sns_destination.dart';

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
///     name: "event-destination-cloudwatch",
///     configurationSetName: example.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
///     cloudwatchDestinations: [{
///         defaultValue: "default",
///         dimensionName: "dimension",
///         valueSource: "emailHeader",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cloudwatch = aws.ses.EventDestination("cloudwatch",
///     name="event-destination-cloudwatch",
///     configuration_set_name=example["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ],
///     cloudwatch_destinations=[{
///         "default_value": "default",
///         "dimension_name": "dimension",
///         "value_source": "emailHeader",
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
///     var cloudwatch = new Aws.Ses.EventDestination("cloudwatch", new()
///     {
///         Name = "event-destination-cloudwatch",
///         ConfigurationSetName = example.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///         CloudwatchDestinations = new[]
///         {
///             new Aws.Ses.Inputs.EventDestinationCloudwatchDestinationArgs
///             {
///                 DefaultValue = "default",
///                 DimensionName = "dimension",
///                 ValueSource = "emailHeader",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewEventDestination(ctx, "cloudwatch", &ses.EventDestinationArgs{
/// 			Name:                 pulumi.String("event-destination-cloudwatch"),
/// 			ConfigurationSetName: pulumi.Any(example.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
/// 			},
/// 			CloudwatchDestinations: ses.EventDestinationCloudwatchDestinationArray{
/// 				&ses.EventDestinationCloudwatchDestinationArgs{
/// 					DefaultValue:  pulumi.String("default"),
/// 					DimensionName: pulumi.String("dimension"),
/// 					ValueSource:   pulumi.String("emailHeader"),
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
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationCloudwatchDestinationArgs;
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
///         var cloudwatch = new EventDestination("cloudwatch", EventDestinationArgs.builder()
///             .name("event-destination-cloudwatch")
///             .configurationSetName(example.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .cloudwatchDestinations(EventDestinationCloudwatchDestinationArgs.builder()
///                 .defaultValue("default")
///                 .dimensionName("dimension")
///                 .valueSource("emailHeader")
///                 .build())
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
///       name: event-destination-cloudwatch
///       configurationSetName: ${example.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
///       cloudwatchDestinations:
///         - defaultValue: default
///           dimensionName: dimension
///           valueSource: emailHeader
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
///     name: "event-destination-kinesis",
///     configurationSetName: exampleAwsSesConfigurationSet.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
///     kinesisDestination: {
///         streamArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///         roleArn: example.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// kinesis = aws.ses.EventDestination("kinesis",
///     name="event-destination-kinesis",
///     configuration_set_name=example_aws_ses_configuration_set["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ],
///     kinesis_destination={
///         "stream_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///         "role_arn": example["arn"],
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
///     var kinesis = new Aws.Ses.EventDestination("kinesis", new()
///     {
///         Name = "event-destination-kinesis",
///         ConfigurationSetName = exampleAwsSesConfigurationSet.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///         KinesisDestination = new Aws.Ses.Inputs.EventDestinationKinesisDestinationArgs
///         {
///             StreamArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///             RoleArn = example.Arn,
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
/// 			Name:                 pulumi.String("event-destination-kinesis"),
/// 			ConfigurationSetName: pulumi.Any(exampleAwsSesConfigurationSet.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
/// 			},
/// 			KinesisDestination: &ses.EventDestinationKinesisDestinationArgs{
/// 				StreamArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 				RoleArn:   pulumi.Any(example.Arn),
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
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationKinesisDestinationArgs;
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
///         var kinesis = new EventDestination("kinesis", EventDestinationArgs.builder()
///             .name("event-destination-kinesis")
///             .configurationSetName(exampleAwsSesConfigurationSet.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .kinesisDestination(EventDestinationKinesisDestinationArgs.builder()
///                 .streamArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                 .roleArn(example.arn())
///                 .build())
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
///       name: event-destination-kinesis
///       configurationSetName: ${exampleAwsSesConfigurationSet.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
///       kinesisDestination:
///         streamArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///         roleArn: ${example.arn}
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
///     name: "event-destination-sns",
///     configurationSetName: exampleAwsSesConfigurationSet.name,
///     enabled: true,
///     matchingTypes: [
///         "bounce",
///         "send",
///     ],
///     snsDestination: {
///         topicArn: example.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sns = aws.ses.EventDestination("sns",
///     name="event-destination-sns",
///     configuration_set_name=example_aws_ses_configuration_set["name"],
///     enabled=True,
///     matching_types=[
///         "bounce",
///         "send",
///     ],
///     sns_destination={
///         "topic_arn": example["arn"],
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
///     var sns = new Aws.Ses.EventDestination("sns", new()
///     {
///         Name = "event-destination-sns",
///         ConfigurationSetName = exampleAwsSesConfigurationSet.Name,
///         Enabled = true,
///         MatchingTypes = new[]
///         {
///             "bounce",
///             "send",
///         },
///         SnsDestination = new Aws.Ses.Inputs.EventDestinationSnsDestinationArgs
///         {
///             TopicArn = example.Arn,
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
/// 			Name:                 pulumi.String("event-destination-sns"),
/// 			ConfigurationSetName: pulumi.Any(exampleAwsSesConfigurationSet.Name),
/// 			Enabled:              pulumi.Bool(true),
/// 			MatchingTypes: pulumi.StringArray{
/// 				pulumi.String("bounce"),
/// 				pulumi.String("send"),
/// 			},
/// 			SnsDestination: &ses.EventDestinationSnsDestinationArgs{
/// 				TopicArn: pulumi.Any(example.Arn),
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
/// import com.pulumi.aws.ses.EventDestination;
/// import com.pulumi.aws.ses.EventDestinationArgs;
/// import com.pulumi.aws.ses.inputs.EventDestinationSnsDestinationArgs;
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
///         var sns = new EventDestination("sns", EventDestinationArgs.builder()
///             .name("event-destination-sns")
///             .configurationSetName(exampleAwsSesConfigurationSet.name())
///             .enabled(true)
///             .matchingTypes(
///                 "bounce",
///                 "send")
///             .snsDestination(EventDestinationSnsDestinationArgs.builder()
///                 .topicArn(example.arn())
///                 .build())
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
///       name: event-destination-sns
///       configurationSetName: ${exampleAwsSesConfigurationSet.name}
///       enabled: true
///       matchingTypes:
///         - bounce
///         - send
///       snsDestination:
///         topicArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES event destinations using `configuration_set_name` together with the event destination's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/eventDestination:EventDestination sns some-configuration-set-test/event-destination-sns
/// ```
class EventDestination extends pulumi.CustomResource {
  /// The SES event destination ARN.
  late final pulumi.Output<String> arn;

  /// CloudWatch destination for the events
  late final pulumi.Output<List<EventDestinationCloudwatchDestination>?>
      cloudwatchDestinations;

  /// The name of the configuration set
  late final pulumi.Output<String> configurationSetName;

  /// If true, the event destination will be enabled
  late final pulumi.Output<bool?> enabled;

  /// Send the events to a kinesis firehose destination
  late final pulumi.Output<EventDestinationKinesisDestination?>
      kinesisDestination;

  /// A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  late final pulumi.Output<List<String>> matchingTypes;

  /// The name of the event destination
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Send the events to an SNS Topic destination
  ///
  /// > **NOTE:** You can specify `"cloudwatch_destination"` or `"kinesis_destination"` but not both
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchDestinations =
        registerOutput<List<EventDestinationCloudwatchDestination>?>(
            'cloudwatchDestinations');
    this.configurationSetName = registerOutput<String>('configurationSetName');
    this.enabled = registerOutput<bool?>('enabled');
    this.kinesisDestination =
        registerOutput<EventDestinationKinesisDestination?>(
            'kinesisDestination');
    this.matchingTypes = registerOutput<List<String>>('matchingTypes');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.snsDestination =
        registerOutput<EventDestinationSnsDestination?>('snsDestination');
  }
}
