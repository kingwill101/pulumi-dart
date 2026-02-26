import 'package:pulumi/pulumi.dart';
import '../log_delivery_s3_delivery_configuration/log_delivery_s3_delivery_configuration.dart';
import 'log_delivery_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery. A delivery is a connection between an <span pulumi-lang-nodejs="`aws.cloudwatch.LogDeliverySource`" pulumi-lang-dotnet="`aws.cloudwatch.LogDeliverySource`" pulumi-lang-go="`cloudwatch.LogDeliverySource`" pulumi-lang-python="`cloudwatch.LogDeliverySource`" pulumi-lang-yaml="`aws.cloudwatch.LogDeliverySource`" pulumi-lang-java="`aws.cloudwatch.LogDeliverySource`">`aws.cloudwatch.LogDeliverySource`</span> and an <span pulumi-lang-nodejs="`aws.cloudwatch.LogDeliveryDestination`" pulumi-lang-dotnet="`aws.cloudwatch.LogDeliveryDestination`" pulumi-lang-go="`cloudwatch.LogDeliveryDestination`" pulumi-lang-python="`cloudwatch.LogDeliveryDestination`" pulumi-lang-yaml="`aws.cloudwatch.LogDeliveryDestination`" pulumi-lang-java="`aws.cloudwatch.LogDeliveryDestination`">`aws.cloudwatch.LogDeliveryDestination`</span>.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogDelivery("example", {
/// deliverySourceName: exampleAwsCloudwatchLogDeliverySource.name,
/// deliveryDestinationArn: exampleAwsCloudwatchLogDeliveryDestination.arn,
/// fieldDelimiter: ",",
/// recordFields: [
/// "event_timestamp",
/// "event",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDelivery("example",
/// delivery_source_name=example_aws_cloudwatch_log_delivery_source["name"],
/// delivery_destination_arn=example_aws_cloudwatch_log_delivery_destination["arn"],
/// field_delimiter=",",
/// record_fields=[
/// "event_timestamp",
/// "event",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudWatch.LogDelivery("example", new()
/// {
/// DeliverySourceName = exampleAwsCloudwatchLogDeliverySource.Name,
/// DeliveryDestinationArn = exampleAwsCloudwatchLogDeliveryDestination.Arn,
/// FieldDelimiter = ",",
/// RecordFields = new[]
/// {
/// "event_timestamp",
/// "event",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// DeliverySourceName:     pulumi.Any(exampleAwsCloudwatchLogDeliverySource.Name),
/// DeliveryDestinationArn: pulumi.Any(exampleAwsCloudwatchLogDeliveryDestination.Arn),
/// FieldDelimiter:         pulumi.String(","),
/// RecordFields: pulumi.StringArray{
/// pulumi.String("event_timestamp"),
/// pulumi.String("event"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LogDelivery("example", LogDeliveryArgs.builder()
/// .deliverySourceName(exampleAwsCloudwatchLogDeliverySource.name())
/// .deliveryDestinationArn(exampleAwsCloudwatchLogDeliveryDestination.arn())
/// .fieldDelimiter(",")
/// .recordFields(
/// "event_timestamp",
/// "event")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogDelivery
/// properties:
/// deliverySourceName: ${exampleAwsCloudwatchLogDeliverySource.name}
/// deliveryDestinationArn: ${exampleAwsCloudwatchLogDeliveryDestination.arn}
/// fieldDelimiter: ','
/// recordFields:
/// - event_timestamp
/// - event
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDelivery:LogDelivery example jsoGVi4Zq8VlYp9n
/// ```
class LogDelivery extends CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery.
  late final Output<String> arn;

  /// The ARN of the delivery destination to use for this delivery.
  late final Output<String> deliveryDestinationArn;

  /// The name of the delivery source to use for this delivery.
  late final Output<String> deliverySourceName;

  /// The field delimiter to use between record fields when the final output format of a delivery is in <span pulumi-lang-nodejs="`plain`" pulumi-lang-dotnet="`Plain`" pulumi-lang-go="`plain`" pulumi-lang-python="`plain`" pulumi-lang-yaml="`plain`" pulumi-lang-java="`plain`">`plain`</span>, <span pulumi-lang-nodejs="`w3c`" pulumi-lang-dotnet="`W3c`" pulumi-lang-go="`w3c`" pulumi-lang-python="`w3c`" pulumi-lang-yaml="`w3c`" pulumi-lang-java="`w3c`">`w3c`</span>, or <span pulumi-lang-nodejs="`raw`" pulumi-lang-dotnet="`Raw`" pulumi-lang-go="`raw`" pulumi-lang-python="`raw`" pulumi-lang-yaml="`raw`" pulumi-lang-java="`raw`">`raw`</span> format.
  late final Output<String> fieldDelimiter;

  /// The list of record fields to be delivered to the destination, in order.
  late final Output<List<String>> recordFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters that are valid only when the delivery's delivery destination is an S3 bucket.
  late final Output<List<LogDeliveryS3DeliveryConfiguration>>
      s3DeliveryConfigurations;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  LogDelivery(
    String name, {
    LogDeliveryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDelivery:LogDelivery',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryDestinationArn =
        registerOutput<String>('deliveryDestinationArn');
    this.deliverySourceName = registerOutput<String>('deliverySourceName');
    this.fieldDelimiter = registerOutput<String>('fieldDelimiter');
    this.recordFields = registerOutput<List<String>>('recordFields');
    this.region = registerOutput<String>('region');
    this.s3DeliveryConfigurations =
        registerOutput<List<LogDeliveryS3DeliveryConfiguration>>(
            's3DeliveryConfigurations');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
