import 'package:pulumi/pulumi.dart';
import 'metrics_destination_args.dart';

/// Provides a CloudWatch RUM Metrics Destination resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rum.MetricsDestination("example", {
/// appMonitorName: exampleAwsRumAppMonitor.name,
/// destination: "CloudWatch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rum.MetricsDestination("example",
/// app_monitor_name=example_aws_rum_app_monitor["name"],
/// destination="CloudWatch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rum.MetricsDestination("example", new()
/// {
/// AppMonitorName = exampleAwsRumAppMonitor.Name,
/// Destination = "CloudWatch",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rum"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rum.NewMetricsDestination(ctx, "example", &rum.MetricsDestinationArgs{
/// AppMonitorName: pulumi.Any(exampleAwsRumAppMonitor.Name),
/// Destination:    pulumi.String("CloudWatch"),
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
/// import com.pulumi.aws.rum.MetricsDestination;
/// import com.pulumi.aws.rum.MetricsDestinationArgs;
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
/// var example = new MetricsDestination("example", MetricsDestinationArgs.builder()
/// .appMonitorName(exampleAwsRumAppMonitor.name())
/// .destination("CloudWatch")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rum:MetricsDestination
/// properties:
/// appMonitorName: ${exampleAwsRumAppMonitor.name}
/// destination: CloudWatch
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM Metrics Destination using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rum/metricsDestination:MetricsDestination example example
/// ```
class MetricsDestination extends CustomResource {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  late final Output<String> appMonitorName;

  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  late final Output<String> destination;

  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  late final Output<String?> destinationArn;

  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  late final Output<String?> iamRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  MetricsDestination(
    String name, {
    MetricsDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rum/metricsDestination:MetricsDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appMonitorName = Output.createUnknown<String>();
    this.destination = Output.createUnknown<String>();
    this.destinationArn = Output.createUnknown<String?>();
    this.iamRoleArn = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
  }
}
