import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_args.dart';
import 'log_delivery_s3_delivery_configuration.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery. A delivery is a connection between an `aws.cloudwatch.LogDeliverySource` and an `aws.cloudwatch.LogDeliveryDestination`.
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
/// const example = new aws.cloudwatch.LogDelivery("example", {
///     deliverySourceName: exampleAwsCloudwatchLogDeliverySource.name,
///     deliveryDestinationArn: exampleAwsCloudwatchLogDeliveryDestination.arn,
///     fieldDelimiter: ",",
///     recordFields: [
///         "event_timestamp",
///         "event",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDelivery("example",
///     delivery_source_name=example_aws_cloudwatch_log_delivery_source["name"],
///     delivery_destination_arn=example_aws_cloudwatch_log_delivery_destination["arn"],
///     field_delimiter=",",
///     record_fields=[
///         "event_timestamp",
///         "event",
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
///     var example = new Aws.CloudWatch.LogDelivery("example", new()
///     {
///         DeliverySourceName = exampleAwsCloudwatchLogDeliverySource.Name,
///         DeliveryDestinationArn = exampleAwsCloudwatchLogDeliveryDestination.Arn,
///         FieldDelimiter = ",",
///         RecordFields = new[]
///         {
///             "event_timestamp",
///             "event",
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
/// 		_, err := cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// 			DeliverySourceName:     pulumi.Any(exampleAwsCloudwatchLogDeliverySource.Name),
/// 			DeliveryDestinationArn: pulumi.Any(exampleAwsCloudwatchLogDeliveryDestination.Arn),
/// 			FieldDelimiter:         pulumi.String(","),
/// 			RecordFields: pulumi.StringArray{
/// 				pulumi.String("event_timestamp"),
/// 				pulumi.String("event"),
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
/// import com.pulumi.aws.cloudwatch.LogDelivery;
/// import com.pulumi.aws.cloudwatch.LogDeliveryArgs;
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
///         var example = new LogDelivery("example", LogDeliveryArgs.builder()
///             .deliverySourceName(exampleAwsCloudwatchLogDeliverySource.name())
///             .deliveryDestinationArn(exampleAwsCloudwatchLogDeliveryDestination.arn())
///             .fieldDelimiter(",")
///             .recordFields(
///                 "event_timestamp",
///                 "event")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogDelivery
///     properties:
///       deliverySourceName: ${exampleAwsCloudwatchLogDeliverySource.name}
///       deliveryDestinationArn: ${exampleAwsCloudwatchLogDeliveryDestination.arn}
///       fieldDelimiter: ','
///       recordFields:
///         - event_timestamp
///         - event
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDelivery:LogDelivery example jsoGVi4Zq8VlYp9n
/// ```
class LogDelivery extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery.
  late final pulumi.Output<String> arn;

  /// The ARN of the delivery destination to use for this delivery.
  late final pulumi.Output<String> deliveryDestinationArn;

  /// The name of the delivery source to use for this delivery.
  late final pulumi.Output<String> deliverySourceName;

  /// The field delimiter to use between record fields when the final output format of a delivery is in `plain`, `w3c`, or `raw` format.
  late final pulumi.Output<String> fieldDelimiter;

  /// The list of record fields to be delivered to the destination, in order.
  late final pulumi.Output<List<String>> recordFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  late final pulumi.Output<List<LogDeliveryS3DeliveryConfiguration>>
  s3DeliveryConfigurations;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LogDelivery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDelivery]. {@macro pulumi_cloudwatch_log_delivery_log_delivery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDelivery(
    String name, {
    LogDeliveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/logDelivery:LogDelivery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationArn = registerOutput<String>(
      'deliveryDestinationArn',
    );
    this.deliverySourceName = registerOutput<String>('deliverySourceName');
    this.fieldDelimiter = registerOutput<String>('fieldDelimiter');
    this.recordFields = registerOutput<List<String>>('recordFields');
    this.region = registerOutput<String>('region');
    this.s3DeliveryConfigurations =
        registerOutput<List<LogDeliveryS3DeliveryConfiguration>>(
          's3DeliveryConfigurations',
        );
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
