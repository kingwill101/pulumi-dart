import 'package:pulumi/pulumi.dart';
import '../log_metric_filter_metric_transformation/log_metric_filter_metric_transformation.dart';
import 'log_metric_filter_args.dart';

/// Provides a CloudWatch Log Metric Filter resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dada = new aws.cloudwatch.LogGroup("dada", {name: "MyApp/access.log"});
/// const yada = new aws.cloudwatch.LogMetricFilter("yada", {
/// name: "MyAppAccessCount",
/// pattern: "",
/// logGroupName: dada.name,
/// metricTransformation: {
/// name: "EventCount",
/// namespace: "YourNamespace",
/// value: "1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dada = aws.cloudwatch.LogGroup("dada", name="MyApp/access.log")
/// yada = aws.cloudwatch.LogMetricFilter("yada",
/// name="MyAppAccessCount",
/// pattern="",
/// log_group_name=dada.name,
/// metric_transformation={
/// "name": "EventCount",
/// "namespace": "YourNamespace",
/// "value": "1",
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
/// var dada = new Aws.CloudWatch.LogGroup("dada", new()
/// {
/// Name = "MyApp/access.log",
/// });
///
/// var yada = new Aws.CloudWatch.LogMetricFilter("yada", new()
/// {
/// Name = "MyAppAccessCount",
/// Pattern = "",
/// LogGroupName = dada.Name,
/// MetricTransformation = new Aws.CloudWatch.Inputs.LogMetricFilterMetricTransformationArgs
/// {
/// Name = "EventCount",
/// Namespace = "YourNamespace",
/// Value = "1",
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
/// dada, err := cloudwatch.NewLogGroup(ctx, "dada", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("MyApp/access.log"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogMetricFilter(ctx, "yada", &cloudwatch.LogMetricFilterArgs{
/// Name:         pulumi.String("MyAppAccessCount"),
/// Pattern:      pulumi.String(""),
/// LogGroupName: dada.Name,
/// MetricTransformation: &cloudwatch.LogMetricFilterMetricTransformationArgs{
/// Name:      pulumi.String("EventCount"),
/// Namespace: pulumi.String("YourNamespace"),
/// Value:     pulumi.String("1"),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogMetricFilter;
/// import com.pulumi.aws.cloudwatch.LogMetricFilterArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogMetricFilterMetricTransformationArgs;
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
/// var dada = new LogGroup("dada", LogGroupArgs.builder()
/// .name("MyApp/access.log")
/// .build());
///
/// var yada = new LogMetricFilter("yada", LogMetricFilterArgs.builder()
/// .name("MyAppAccessCount")
/// .pattern("")
/// .logGroupName(dada.name())
/// .metricTransformation(LogMetricFilterMetricTransformationArgs.builder()
/// .name("EventCount")
/// .namespace("YourNamespace")
/// .value("1")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// yada:
/// type: aws:cloudwatch:LogMetricFilter
/// properties:
/// name: MyAppAccessCount
/// pattern: ""
/// logGroupName: ${dada.name}
/// metricTransformation:
/// name: EventCount
/// namespace: YourNamespace
/// value: '1'
/// dada:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: MyApp/access.log
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Log Metric Filter using the `log_group_name:name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logMetricFilter:LogMetricFilter test /aws/lambda/function:test
/// ```
class LogMetricFilter extends CustomResource {
  /// Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Valid only for log groups that have an active log transformer.
  late final Output<bool> applyOnTransformedLogs;

  /// The name of the log group to associate the metric filter with.
  late final Output<String> logGroupName;

  /// A block defining collection of information needed to define how metric data gets emitted. See below.
  late final Output<LogMetricFilterMetricTransformation> metricTransformation;

  /// A name for the metric filter.
  late final Output<String> name;

  /// A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// for extracting metric data out of ingested log events.
  late final Output<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogMetricFilter(
    String name, {
    LogMetricFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logMetricFilter:LogMetricFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyOnTransformedLogs =
        registerOutput<bool>('applyOnTransformedLogs');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.metricTransformation =
        registerOutput<LogMetricFilterMetricTransformation>(
            'metricTransformation');
    this.name = registerOutput<String>('name');
    this.pattern = registerOutput<String>('pattern');
    this.region = registerOutput<String>('region');
  }
}
