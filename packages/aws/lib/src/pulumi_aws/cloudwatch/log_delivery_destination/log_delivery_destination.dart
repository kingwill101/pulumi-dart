import 'package:pulumi/pulumi.dart';
import '../log_delivery_destination_delivery_destination_configuration/log_delivery_destination_delivery_destination_configuration.dart';
import 'log_delivery_destination_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Destination.
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
/// const example = new aws.cloudwatch.LogDeliveryDestination("example", {
/// name: "example",
/// deliveryDestinationConfiguration: {
/// destinationResourceArn: exampleAwsCloudwatchLogGroup.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDeliveryDestination("example",
/// name="example",
/// delivery_destination_configuration={
/// "destination_resource_arn": example_aws_cloudwatch_log_group["arn"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudWatch.LogDeliveryDestination("example", new()
/// {
/// Name = "example",
/// DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
/// {
/// DestinationResourceArn = exampleAwsCloudwatchLogGroup.Arn,
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
/// _, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// Name: pulumi.String("example"),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: pulumi.Any(exampleAwsCloudwatchLogGroup.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LogDeliveryDestination("example", LogDeliveryDestinationArgs.builder()
/// .name("example")
/// .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
/// .destinationResourceArn(exampleAwsCloudwatchLogGroup.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogDeliveryDestination
/// properties:
/// name: example
/// deliveryDestinationConfiguration:
/// destinationResourceArn: ${exampleAwsCloudwatchLogGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### X-Ray Trace Delivery
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xray = new aws.cloudwatch.LogDeliveryDestination("xray", {
/// name: "xray-traces",
/// deliveryDestinationType: "XRAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// xray = aws.cloudwatch.LogDeliveryDestination("xray",
/// name="xray-traces",
/// delivery_destination_type="XRAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var xray = new Aws.CloudWatch.LogDeliveryDestination("xray", new()
/// {
/// Name = "xray-traces",
/// DeliveryDestinationType = "XRAY",
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
/// _, err := cloudwatch.NewLogDeliveryDestination(ctx, "xray", &cloudwatch.LogDeliveryDestinationArgs{
/// Name:                    pulumi.String("xray-traces"),
/// DeliveryDestinationType: pulumi.String("XRAY"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var xray = new LogDeliveryDestination("xray", LogDeliveryDestinationArgs.builder()
/// .name("xray-traces")
/// .deliveryDestinationType("XRAY")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// xray:
/// type: aws:cloudwatch:LogDeliveryDestination
/// properties:
/// name: xray-traces
/// deliveryDestinationType: XRAY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery Destination using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination example example
/// ```
class LogDeliveryDestination extends CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery destination.
  late final Output<String> arn;

  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  late final Output<LogDeliveryDestinationDeliveryDestinationConfiguration?>
      deliveryDestinationConfiguration;

  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the <span pulumi-lang-nodejs="`destinationResourceArn`" pulumi-lang-dotnet="`DestinationResourceArn`" pulumi-lang-go="`destinationResourceArn`" pulumi-lang-python="`destination_resource_arn`" pulumi-lang-yaml="`destinationResourceArn`" pulumi-lang-java="`destinationResourceArn`">`destination_resource_arn`</span>.
  late final Output<String> deliveryDestinationType;

  /// The name for this delivery destination.
  late final Output<String> name;

  /// The format of the logs that are sent to this delivery destination. Valid values: <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, <span pulumi-lang-nodejs="`plain`" pulumi-lang-dotnet="`Plain`" pulumi-lang-go="`plain`" pulumi-lang-python="`plain`" pulumi-lang-yaml="`plain`" pulumi-lang-java="`plain`">`plain`</span>, <span pulumi-lang-nodejs="`w3c`" pulumi-lang-dotnet="`W3c`" pulumi-lang-go="`w3c`" pulumi-lang-python="`w3c`" pulumi-lang-yaml="`w3c`" pulumi-lang-java="`w3c`">`w3c`</span>, <span pulumi-lang-nodejs="`raw`" pulumi-lang-dotnet="`Raw`" pulumi-lang-go="`raw`" pulumi-lang-python="`raw`" pulumi-lang-yaml="`raw`" pulumi-lang-java="`raw`">`raw`</span>, <span pulumi-lang-nodejs="`parquet`" pulumi-lang-dotnet="`Parquet`" pulumi-lang-go="`parquet`" pulumi-lang-python="`parquet`" pulumi-lang-yaml="`parquet`" pulumi-lang-java="`parquet`">`parquet`</span>.
  late final Output<String?> outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  LogDeliveryDestination(
    String name, {
    LogDeliveryDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestination:LogDeliveryDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deliveryDestinationConfiguration = Output.createUnknown<
        LogDeliveryDestinationDeliveryDestinationConfiguration?>();
    this.deliveryDestinationType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.outputFormat = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
