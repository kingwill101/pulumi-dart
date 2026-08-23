import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_args.dart';
import 'log_delivery_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_logdelivery" "example" {
///   delivery_source_name     = exampleAwsCloudwatchLogDeliverySource.name
///   delivery_destination_arn = exampleAwsCloudwatchLogDeliveryDestination.arn
///   field_delimiter          = ","
///   record_fields            = ["event_timestamp", "event"]
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
/// ### CloudFront Standard Logging (v2)
///
/// CloudFront delivers access logs through CloudWatch Logs, so a distribution's standard logging (v2) configuration is expressed as a delivery source, a delivery destination, and a delivery. The `recordFields` list selects the access log fields, including `viewer-request-log-data` and `viewer-response-log-data`, which carry the custom data that a viewer request or viewer response CloudFront Function logs with `cf.logCustomData()`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogDeliverySource("example", {
///     name: "cloudfront-access-logs",
///     logType: "ACCESS_LOGS",
///     resourceArn: exampleAwsCloudfrontDistribution.arn,
/// });
/// const exampleLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("example", {
///     name: "cloudfront-access-logs",
///     outputFormat: "json",
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: exampleAwsCloudwatchLogGroup.arn,
///     },
/// });
/// const exampleLogDelivery = new aws.cloudwatch.LogDelivery("example", {
///     deliverySourceName: example.name,
///     deliveryDestinationArn: exampleLogDeliveryDestination.arn,
///     recordFields: [
///         "date",
///         "time",
///         "c-ip",
///         "sc-status",
///         "viewer-request-log-data",
///         "viewer-response-log-data",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDeliverySource("example",
///     name="cloudfront-access-logs",
///     log_type="ACCESS_LOGS",
///     resource_arn=example_aws_cloudfront_distribution["arn"])
/// example_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("example",
///     name="cloudfront-access-logs",
///     output_format="json",
///     delivery_destination_configuration={
///         "destination_resource_arn": example_aws_cloudwatch_log_group["arn"],
///     })
/// example_log_delivery = aws.cloudwatch.LogDelivery("example",
///     delivery_source_name=example.name,
///     delivery_destination_arn=example_log_delivery_destination.arn,
///     record_fields=[
///         "date",
///         "time",
///         "c-ip",
///         "sc-status",
///         "viewer-request-log-data",
///         "viewer-response-log-data",
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
///     var example = new Aws.CloudWatch.LogDeliverySource("example", new()
///     {
///         Name = "cloudfront-access-logs",
///         LogType = "ACCESS_LOGS",
///         ResourceArn = exampleAwsCloudfrontDistribution.Arn,
///     });
///
///     var exampleLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("example", new()
///     {
///         Name = "cloudfront-access-logs",
///         OutputFormat = "json",
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = exampleAwsCloudwatchLogGroup.Arn,
///         },
///     });
///
///     var exampleLogDelivery = new Aws.CloudWatch.LogDelivery("example", new()
///     {
///         DeliverySourceName = example.Name,
///         DeliveryDestinationArn = exampleLogDeliveryDestination.Arn,
///         RecordFields = new[]
///         {
///             "date",
///             "time",
///             "c-ip",
///             "sc-status",
///             "viewer-request-log-data",
///             "viewer-response-log-data",
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
/// 		example, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// 			Name:        pulumi.String("cloudfront-access-logs"),
/// 			LogType:     pulumi.String("ACCESS_LOGS"),
/// 			ResourceArn: pulumi.Any(exampleAwsCloudfrontDistribution.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// 			Name:         pulumi.String("cloudfront-access-logs"),
/// 			OutputFormat: pulumi.String("json"),
/// 			DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// 				DestinationResourceArn: pulumi.Any(exampleAwsCloudwatchLogGroup.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// 			DeliverySourceName:     example.Name,
/// 			DeliveryDestinationArn: exampleLogDeliveryDestination.Arn,
/// 			RecordFields: pulumi.StringArray{
/// 				pulumi.String("date"),
/// 				pulumi.String("time"),
/// 				pulumi.String("c-ip"),
/// 				pulumi.String("sc-status"),
/// 				pulumi.String("viewer-request-log-data"),
/// 				pulumi.String("viewer-response-log-data"),
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
/// resource "aws_cloudwatch_logdeliverysource" "example" {
///   name         = "cloudfront-access-logs"
///   log_type     = "ACCESS_LOGS"
///   resource_arn = exampleAwsCloudfrontDistribution.arn
/// }
/// resource "aws_cloudwatch_logdeliverydestination" "example" {
///   name          = "cloudfront-access-logs"
///   output_format = "json"
///   delivery_destination_configuration = {
///     destination_resource_arn = exampleAwsCloudwatchLogGroup.arn
///   }
/// }
/// resource "aws_cloudwatch_logdelivery" "example" {
///   delivery_source_name     = aws_cloudwatch_logdeliverysource.example.name
///   delivery_destination_arn = aws_cloudwatch_logdeliverydestination.example.arn
///   record_fields            = ["date", "time", "c-ip", "sc-status", "viewer-request-log-data", "viewer-response-log-data"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
///         var example = new LogDeliverySource("example", LogDeliverySourceArgs.builder()
///             .name("cloudfront-access-logs")
///             .logType("ACCESS_LOGS")
///             .resourceArn(exampleAwsCloudfrontDistribution.arn())
///             .build());
///
///         var exampleLogDeliveryDestination = new LogDeliveryDestination("exampleLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
///             .name("cloudfront-access-logs")
///             .outputFormat("json")
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(exampleAwsCloudwatchLogGroup.arn())
///                 .build())
///             .build());
///
///         var exampleLogDelivery = new LogDelivery("exampleLogDelivery", LogDeliveryArgs.builder()
///             .deliverySourceName(example.name())
///             .deliveryDestinationArn(exampleLogDeliveryDestination.arn())
///             .recordFields(
///                 "date",
///                 "time",
///                 "c-ip",
///                 "sc-status",
///                 "viewer-request-log-data",
///                 "viewer-response-log-data")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogDeliverySource
///     properties:
///       name: cloudfront-access-logs
///       logType: ACCESS_LOGS
///       resourceArn: ${exampleAwsCloudfrontDistribution.arn}
///   exampleLogDeliveryDestination:
///     type: aws:cloudwatch:LogDeliveryDestination
///     name: example
///     properties:
///       name: cloudfront-access-logs
///       outputFormat: json
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${exampleAwsCloudwatchLogGroup.arn}
///   exampleLogDelivery:
///     type: aws:cloudwatch:LogDelivery
///     name: example
///     properties:
///       deliverySourceName: ${example.name}
///       deliveryDestinationArn: ${exampleLogDeliveryDestination.arn}
///       recordFields:
///         - date
///         - time
///         - c-ip
///         - sc-status
///         - viewer-request-log-data
///         - viewer-response-log-data
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the delivery.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Deliveries using `id`. For example:
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
  /// The list of record fields to be delivered to the destination, in order. The valid field names vary by the `logType` of the delivery source. For a CloudFront `ACCESS_LOGS` source, see [Configure standard logging (v2)](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#standard-logging-real-time-log-selection) for the supported values.
  late final pulumi.Output<List<String>> recordFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  late final pulumi.Output<List<Map<String, dynamic>>> s3DeliveryConfigurations;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
    arn = registerOutput<String>('arn');
    deliveryDestinationArn = registerOutput<String>('deliveryDestinationArn');
    deliverySourceName = registerOutput<String>('deliverySourceName');
    fieldDelimiter = registerOutput<String>('fieldDelimiter');
    recordFields = registerOutput<List<String>>('recordFields');
    region = registerOutput<String>('region');
    s3DeliveryConfigurations = registerOutput<List<Map<String, dynamic>>>('s3DeliveryConfigurations');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [LogDelivery] resource's state with the given [name] and [id].
  static LogDelivery get(
    String name,
    pulumi.Input<String> id, {
    LogDeliveryState? state,
  }) {
    return LogDelivery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogDelivery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDelivery:LogDelivery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deliveryDestinationArn = registerOutput<String>('deliveryDestinationArn');
    deliverySourceName = registerOutput<String>('deliverySourceName');
    fieldDelimiter = registerOutput<String>('fieldDelimiter');
    recordFields = registerOutput<List<String>>('recordFields');
    region = registerOutput<String>('region');
    s3DeliveryConfigurations = registerOutput<List<Map<String, dynamic>>>('s3DeliveryConfigurations');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
