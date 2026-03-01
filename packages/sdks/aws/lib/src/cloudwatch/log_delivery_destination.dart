import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_destination_args.dart';
import 'log_delivery_destination_delivery_destination_configuration.dart';
import 'log_delivery_destination_state.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Destination.
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
/// const example = new aws.cloudwatch.LogDeliveryDestination("example", {
///     name: "example",
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: exampleAwsCloudwatchLogGroup.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDeliveryDestination("example",
///     name="example",
///     delivery_destination_configuration={
///         "destination_resource_arn": example_aws_cloudwatch_log_group["arn"],
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
///     var example = new Aws.CloudWatch.LogDeliveryDestination("example", new()
///     {
///         Name = "example",
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = exampleAwsCloudwatchLogGroup.Arn,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// 			Name: pulumi.String("example"),
/// 			DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// 				DestinationResourceArn: pulumi.Any(exampleAwsCloudwatchLogGroup.Arn),
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
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs;
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
///         var example = new LogDeliveryDestination("example", LogDeliveryDestinationArgs.builder()
///             .name("example")
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(exampleAwsCloudwatchLogGroup.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogDeliveryDestination
///     properties:
///       name: example
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${exampleAwsCloudwatchLogGroup.arn}
/// ```
///
///
/// ### X-Ray Trace Delivery
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xray = new aws.cloudwatch.LogDeliveryDestination("xray", {
///     name: "xray-traces",
///     deliveryDestinationType: "XRAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// xray = aws.cloudwatch.LogDeliveryDestination("xray",
///     name="xray-traces",
///     delivery_destination_type="XRAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var xray = new Aws.CloudWatch.LogDeliveryDestination("xray", new()
///     {
///         Name = "xray-traces",
///         DeliveryDestinationType = "XRAY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogDeliveryDestination(ctx, "xray", &cloudwatch.LogDeliveryDestinationArgs{
/// 			Name:                    pulumi.String("xray-traces"),
/// 			DeliveryDestinationType: pulumi.String("XRAY"),
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
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
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
///         var xray = new LogDeliveryDestination("xray", LogDeliveryDestinationArgs.builder()
///             .name("xray-traces")
///             .deliveryDestinationType("XRAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   xray:
///     type: aws:cloudwatch:LogDeliveryDestination
///     properties:
///       name: xray-traces
///       deliveryDestinationType: XRAY
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery Destination using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination example example
/// ```
class LogDeliveryDestination extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery destination.
  late final pulumi.Output<String> arn;
  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  late final pulumi.Output<LogDeliveryDestinationDeliveryDestinationConfiguration?> deliveryDestinationConfiguration;
  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the `destination_resource_arn`.
  late final pulumi.Output<String> deliveryDestinationType;
  /// The name for this delivery destination.
  late final pulumi.Output<String> name;
  /// The format of the logs that are sent to this delivery destination. Valid values: `json`, `plain`, `w3c`, `raw`, `parquet`.
  late final pulumi.Output<String?> outputFormat;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LogDeliveryDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDeliveryDestination]. {@macro pulumi_cloudwatch_log_delivery_destination_log_delivery_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDeliveryDestination(
    String name, {
    LogDeliveryDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationConfiguration = registerOutput<LogDeliveryDestinationDeliveryDestinationConfiguration?>('deliveryDestinationConfiguration');
    this.deliveryDestinationType = registerOutput<String>('deliveryDestinationType');
    this.name = registerOutput<String>('name');
    this.outputFormat = registerOutput<String?>('outputFormat');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [LogDeliveryDestination] resource's state with the given [name] and [id].
  static LogDeliveryDestination get(
    String name,
    pulumi.Input<String> id, {
    LogDeliveryDestinationState? state,
  }) {
    return LogDeliveryDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogDeliveryDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationConfiguration = registerOutput<LogDeliveryDestinationDeliveryDestinationConfiguration?>('deliveryDestinationConfiguration');
    this.deliveryDestinationType = registerOutput<String>('deliveryDestinationType');
    this.name = registerOutput<String>('name');
    this.outputFormat = registerOutput<String?>('outputFormat');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
