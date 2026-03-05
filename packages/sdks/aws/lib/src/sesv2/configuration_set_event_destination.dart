import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_args.dart';
import 'configuration_set_event_destination_event_destination.dart';
import 'configuration_set_event_destination_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Configuration Set Event Destination.
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
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleConfigurationSetEventDestination = new aws.sesv2.ConfigurationSetEventDestination("example", {
///     configurationSetName: example.configurationSetName,
///     eventDestinationName: "example",
///     eventDestination: {
///         cloudWatchDestination: {
///             dimensionConfigurations: [{
///                 defaultDimensionValue: "example",
///                 dimensionName: "example",
///                 dimensionValueSource: "MESSAGE_TAG",
///             }],
///         },
///         enabled: true,
///         matchingEventTypes: ["SEND"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_configuration_set_event_destination = aws.sesv2.ConfigurationSetEventDestination("example",
///     configuration_set_name=example.configuration_set_name,
///     event_destination_name="example",
///     event_destination={
///         "cloud_watch_destination": {
///             "dimension_configurations": [{
///                 "default_dimension_value": "example",
///                 "dimension_name": "example",
///                 "dimension_value_source": "MESSAGE_TAG",
///             }],
///         },
///         "enabled": True,
///         "matching_event_types": ["SEND"],
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
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///     });
///
///     var exampleConfigurationSetEventDestination = new Aws.SesV2.ConfigurationSetEventDestination("example", new()
///     {
///         ConfigurationSetName = example.ConfigurationSetName,
///         EventDestinationName = "example",
///         EventDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationArgs
///         {
///             CloudWatchDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationArgs
///             {
///                 DimensionConfigurations = new[]
///                 {
///                     new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationArgs
///                     {
///                         DefaultDimensionValue = "example",
///                         DimensionName = "example",
///                         DimensionValueSource = "MESSAGE_TAG",
///                     },
///                 },
///             },
///             Enabled = true,
///             MatchingEventTypes = new[]
///             {
///                 "SEND",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewConfigurationSetEventDestination(ctx, "example", &sesv2.ConfigurationSetEventDestinationArgs{
/// 			ConfigurationSetName: example.ConfigurationSetName,
/// 			EventDestinationName: pulumi.String("example"),
/// 			EventDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationArgs{
/// 				CloudWatchDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationArgs{
/// 					DimensionConfigurations: sesv2.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationArray{
/// 						&sesv2.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationArgs{
/// 							DefaultDimensionValue: pulumi.String("example"),
/// 							DimensionName:         pulumi.String("example"),
/// 							DimensionValueSource:  pulumi.String("MESSAGE_TAG"),
/// 						},
/// 					},
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MatchingEventTypes: pulumi.StringArray{
/// 					pulumi.String("SEND"),
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestination;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationArgs;
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///         var exampleConfigurationSetEventDestination = new ConfigurationSetEventDestination("exampleConfigurationSetEventDestination", ConfigurationSetEventDestinationArgs.builder()
///             .configurationSetName(example.configurationSetName())
///             .eventDestinationName("example")
///             .eventDestination(ConfigurationSetEventDestinationEventDestinationArgs.builder()
///                 .cloudWatchDestination(ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationArgs.builder()
///                     .dimensionConfigurations(ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationArgs.builder()
///                         .defaultDimensionValue("example")
///                         .dimensionName("example")
///                         .dimensionValueSource("MESSAGE_TAG")
///                         .build())
///                     .build())
///                 .enabled(true)
///                 .matchingEventTypes("SEND")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///   exampleConfigurationSetEventDestination:
///     type: aws:sesv2:ConfigurationSetEventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.configurationSetName}
///       eventDestinationName: example
///       eventDestination:
///         cloudWatchDestination:
///           dimensionConfigurations:
///             - defaultDimensionValue: example
///               dimensionName: example
///               dimensionValueSource: MESSAGE_TAG
///         enabled: true
///         matchingEventTypes:
///           - SEND
/// ```
///
///
/// ### EventBridge Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.cloudwatch.getEventBus({
///     name: "default",
/// });
/// const example = new aws.sesv2.ConfigurationSetEventDestination("example", {
///     configurationSetName: exampleAwsSesv2ConfigurationSet.configurationSetName,
///     eventDestinationName: "example",
///     eventDestination: {
///         eventBridgeDestination: {
///             eventBusArn: _default.then(_default => _default.arn),
///         },
///         enabled: true,
///         matchingEventTypes: ["SEND"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.cloudwatch.get_event_bus(name="default")
/// example = aws.sesv2.ConfigurationSetEventDestination("example",
///     configuration_set_name=example_aws_sesv2_configuration_set["configurationSetName"],
///     event_destination_name="example",
///     event_destination={
///         "event_bridge_destination": {
///             "event_bus_arn": default.arn,
///         },
///         "enabled": True,
///         "matching_event_types": ["SEND"],
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
///     var @default = Aws.CloudWatch.GetEventBus.Invoke(new()
///     {
///         Name = "default",
///     });
///
///     var example = new Aws.SesV2.ConfigurationSetEventDestination("example", new()
///     {
///         ConfigurationSetName = exampleAwsSesv2ConfigurationSet.ConfigurationSetName,
///         EventDestinationName = "example",
///         EventDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationArgs
///         {
///             EventBridgeDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationEventBridgeDestinationArgs
///             {
///                 EventBusArn = @default.Apply(@default => @default.Apply(getEventBusResult => getEventBusResult.Arn)),
///             },
///             Enabled = true,
///             MatchingEventTypes = new[]
///             {
///                 "SEND",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudwatch.LookupEventBus(ctx, &cloudwatch.LookupEventBusArgs{
/// 			Name: "default",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewConfigurationSetEventDestination(ctx, "example", &sesv2.ConfigurationSetEventDestinationArgs{
/// 			ConfigurationSetName: pulumi.Any(exampleAwsSesv2ConfigurationSet.ConfigurationSetName),
/// 			EventDestinationName: pulumi.String("example"),
/// 			EventDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationArgs{
/// 				EventBridgeDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationEventBridgeDestinationArgs{
/// 					EventBusArn: pulumi.String(_default.Arn),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MatchingEventTypes: pulumi.StringArray{
/// 					pulumi.String("SEND"),
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
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetEventBusArgs;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestination;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationEventBridgeDestinationArgs;
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
///         final var default = CloudwatchFunctions.getEventBus(GetEventBusArgs.builder()
///             .name("default")
///             .build());
///
///         var example = new ConfigurationSetEventDestination("example", ConfigurationSetEventDestinationArgs.builder()
///             .configurationSetName(exampleAwsSesv2ConfigurationSet.configurationSetName())
///             .eventDestinationName("example")
///             .eventDestination(ConfigurationSetEventDestinationEventDestinationArgs.builder()
///                 .eventBridgeDestination(ConfigurationSetEventDestinationEventDestinationEventBridgeDestinationArgs.builder()
///                     .eventBusArn(default_.arn())
///                     .build())
///                 .enabled(true)
///                 .matchingEventTypes("SEND")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSetEventDestination
///     properties:
///       configurationSetName: ${exampleAwsSesv2ConfigurationSet.configurationSetName}
///       eventDestinationName: example
///       eventDestination:
///         eventBridgeDestination:
///           eventBusArn: ${default.arn}
///         enabled: true
///         matchingEventTypes:
///           - SEND
/// variables:
///   default:
///     fn::invoke:
///       function: aws:cloudwatch:getEventBus
///       arguments:
///         name: default
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
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleConfigurationSetEventDestination = new aws.sesv2.ConfigurationSetEventDestination("example", {
///     configurationSetName: example.configurationSetName,
///     eventDestinationName: "example",
///     eventDestination: {
///         kinesisFirehoseDestination: {
///             deliveryStreamArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///             iamRoleArn: exampleAwsIamRole.arn,
///         },
///         enabled: true,
///         matchingEventTypes: ["SEND"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_configuration_set_event_destination = aws.sesv2.ConfigurationSetEventDestination("example",
///     configuration_set_name=example.configuration_set_name,
///     event_destination_name="example",
///     event_destination={
///         "kinesis_firehose_destination": {
///             "delivery_stream_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///             "iam_role_arn": example_aws_iam_role["arn"],
///         },
///         "enabled": True,
///         "matching_event_types": ["SEND"],
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
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///     });
///
///     var exampleConfigurationSetEventDestination = new Aws.SesV2.ConfigurationSetEventDestination("example", new()
///     {
///         ConfigurationSetName = example.ConfigurationSetName,
///         EventDestinationName = "example",
///         EventDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationArgs
///         {
///             KinesisFirehoseDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestinationArgs
///             {
///                 DeliveryStreamArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///                 IamRoleArn = exampleAwsIamRole.Arn,
///             },
///             Enabled = true,
///             MatchingEventTypes = new[]
///             {
///                 "SEND",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewConfigurationSetEventDestination(ctx, "example", &sesv2.ConfigurationSetEventDestinationArgs{
/// 			ConfigurationSetName: example.ConfigurationSetName,
/// 			EventDestinationName: pulumi.String("example"),
/// 			EventDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationArgs{
/// 				KinesisFirehoseDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestinationArgs{
/// 					DeliveryStreamArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 					IamRoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MatchingEventTypes: pulumi.StringArray{
/// 					pulumi.String("SEND"),
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestination;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestinationArgs;
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///         var exampleConfigurationSetEventDestination = new ConfigurationSetEventDestination("exampleConfigurationSetEventDestination", ConfigurationSetEventDestinationArgs.builder()
///             .configurationSetName(example.configurationSetName())
///             .eventDestinationName("example")
///             .eventDestination(ConfigurationSetEventDestinationEventDestinationArgs.builder()
///                 .kinesisFirehoseDestination(ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestinationArgs.builder()
///                     .deliveryStreamArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                     .iamRoleArn(exampleAwsIamRole.arn())
///                     .build())
///                 .enabled(true)
///                 .matchingEventTypes("SEND")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///   exampleConfigurationSetEventDestination:
///     type: aws:sesv2:ConfigurationSetEventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.configurationSetName}
///       eventDestinationName: example
///       eventDestination:
///         kinesisFirehoseDestination:
///           deliveryStreamArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///           iamRoleArn: ${exampleAwsIamRole.arn}
///         enabled: true
///         matchingEventTypes:
///           - SEND
/// ```
///
///
/// ### Pinpoint Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleConfigurationSetEventDestination = new aws.sesv2.ConfigurationSetEventDestination("example", {
///     configurationSetName: example.configurationSetName,
///     eventDestinationName: "example",
///     eventDestination: {
///         pinpointDestination: {
///             applicationArn: exampleAwsPinpointApp.arn,
///         },
///         enabled: true,
///         matchingEventTypes: ["SEND"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_configuration_set_event_destination = aws.sesv2.ConfigurationSetEventDestination("example",
///     configuration_set_name=example.configuration_set_name,
///     event_destination_name="example",
///     event_destination={
///         "pinpoint_destination": {
///             "application_arn": example_aws_pinpoint_app["arn"],
///         },
///         "enabled": True,
///         "matching_event_types": ["SEND"],
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
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///     });
///
///     var exampleConfigurationSetEventDestination = new Aws.SesV2.ConfigurationSetEventDestination("example", new()
///     {
///         ConfigurationSetName = example.ConfigurationSetName,
///         EventDestinationName = "example",
///         EventDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationArgs
///         {
///             PinpointDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationPinpointDestinationArgs
///             {
///                 ApplicationArn = exampleAwsPinpointApp.Arn,
///             },
///             Enabled = true,
///             MatchingEventTypes = new[]
///             {
///                 "SEND",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewConfigurationSetEventDestination(ctx, "example", &sesv2.ConfigurationSetEventDestinationArgs{
/// 			ConfigurationSetName: example.ConfigurationSetName,
/// 			EventDestinationName: pulumi.String("example"),
/// 			EventDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationArgs{
/// 				PinpointDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationPinpointDestinationArgs{
/// 					ApplicationArn: pulumi.Any(exampleAwsPinpointApp.Arn),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MatchingEventTypes: pulumi.StringArray{
/// 					pulumi.String("SEND"),
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestination;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationPinpointDestinationArgs;
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///         var exampleConfigurationSetEventDestination = new ConfigurationSetEventDestination("exampleConfigurationSetEventDestination", ConfigurationSetEventDestinationArgs.builder()
///             .configurationSetName(example.configurationSetName())
///             .eventDestinationName("example")
///             .eventDestination(ConfigurationSetEventDestinationEventDestinationArgs.builder()
///                 .pinpointDestination(ConfigurationSetEventDestinationEventDestinationPinpointDestinationArgs.builder()
///                     .applicationArn(exampleAwsPinpointApp.arn())
///                     .build())
///                 .enabled(true)
///                 .matchingEventTypes("SEND")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///   exampleConfigurationSetEventDestination:
///     type: aws:sesv2:ConfigurationSetEventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.configurationSetName}
///       eventDestinationName: example
///       eventDestination:
///         pinpointDestination:
///           applicationArn: ${exampleAwsPinpointApp.arn}
///         enabled: true
///         matchingEventTypes:
///           - SEND
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
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleConfigurationSetEventDestination = new aws.sesv2.ConfigurationSetEventDestination("example", {
///     configurationSetName: example.configurationSetName,
///     eventDestinationName: "example",
///     eventDestination: {
///         snsDestination: {
///             topicArn: exampleAwsSnsTopic.arn,
///         },
///         enabled: true,
///         matchingEventTypes: ["SEND"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_configuration_set_event_destination = aws.sesv2.ConfigurationSetEventDestination("example",
///     configuration_set_name=example.configuration_set_name,
///     event_destination_name="example",
///     event_destination={
///         "sns_destination": {
///             "topic_arn": example_aws_sns_topic["arn"],
///         },
///         "enabled": True,
///         "matching_event_types": ["SEND"],
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
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///     });
///
///     var exampleConfigurationSetEventDestination = new Aws.SesV2.ConfigurationSetEventDestination("example", new()
///     {
///         ConfigurationSetName = example.ConfigurationSetName,
///         EventDestinationName = "example",
///         EventDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationArgs
///         {
///             SnsDestination = new Aws.SesV2.Inputs.ConfigurationSetEventDestinationEventDestinationSnsDestinationArgs
///             {
///                 TopicArn = exampleAwsSnsTopic.Arn,
///             },
///             Enabled = true,
///             MatchingEventTypes = new[]
///             {
///                 "SEND",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewConfigurationSetEventDestination(ctx, "example", &sesv2.ConfigurationSetEventDestinationArgs{
/// 			ConfigurationSetName: example.ConfigurationSetName,
/// 			EventDestinationName: pulumi.String("example"),
/// 			EventDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationArgs{
/// 				SnsDestination: &sesv2.ConfigurationSetEventDestinationEventDestinationSnsDestinationArgs{
/// 					TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MatchingEventTypes: pulumi.StringArray{
/// 					pulumi.String("SEND"),
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestination;
/// import com.pulumi.aws.sesv2.ConfigurationSetEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetEventDestinationEventDestinationSnsDestinationArgs;
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///         var exampleConfigurationSetEventDestination = new ConfigurationSetEventDestination("exampleConfigurationSetEventDestination", ConfigurationSetEventDestinationArgs.builder()
///             .configurationSetName(example.configurationSetName())
///             .eventDestinationName("example")
///             .eventDestination(ConfigurationSetEventDestinationEventDestinationArgs.builder()
///                 .snsDestination(ConfigurationSetEventDestinationEventDestinationSnsDestinationArgs.builder()
///                     .topicArn(exampleAwsSnsTopic.arn())
///                     .build())
///                 .enabled(true)
///                 .matchingEventTypes("SEND")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///   exampleConfigurationSetEventDestination:
///     type: aws:sesv2:ConfigurationSetEventDestination
///     name: example
///     properties:
///       configurationSetName: ${example.configurationSetName}
///       eventDestinationName: example
///       eventDestination:
///         snsDestination:
///           topicArn: ${exampleAwsSnsTopic.arn}
///         enabled: true
///         matchingEventTypes:
///           - SEND
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Configuration Set Event Destination using the `id` (`configuration_set_name|event_destination_name`). For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/configurationSetEventDestination:ConfigurationSetEventDestination example example_configuration_set|example_event_destination
/// ```
class ConfigurationSetEventDestination extends pulumi.CustomResource {
  /// The name of the configuration set.
  late final pulumi.Output<String> configurationSetName;
  /// A name that identifies the event destination within the configuration set.
  late final pulumi.Output<ConfigurationSetEventDestinationEventDestination> eventDestination;
  /// An object that defines the event destination. See `event_destination` Block for details.
  late final pulumi.Output<String> eventDestinationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ConfigurationSetEventDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationSetEventDestination]. {@macro pulumi_sesv2_configuration_set_event_destination_configuration_set_event_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationSetEventDestination(
    String name, {
    ConfigurationSetEventDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSetEventDestination:ConfigurationSetEventDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationSetName = registerOutput<String>('configurationSetName');
    eventDestination = registerOutput<ConfigurationSetEventDestinationEventDestination>('eventDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetEventDestinationEventDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventDestinationName = registerOutput<String>('eventDestinationName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ConfigurationSetEventDestination] resource's state with the given [name] and [id].
  static ConfigurationSetEventDestination get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationSetEventDestinationState? state,
  }) {
    return ConfigurationSetEventDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConfigurationSetEventDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSetEventDestination:ConfigurationSetEventDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationSetName = registerOutput<String>('configurationSetName');
    eventDestination = registerOutput<ConfigurationSetEventDestinationEventDestination>('eventDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetEventDestinationEventDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventDestinationName = registerOutput<String>('eventDestinationName');
    region = registerOutput<String>('region');
  }
}
