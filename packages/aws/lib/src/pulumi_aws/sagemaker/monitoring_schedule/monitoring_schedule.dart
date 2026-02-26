import 'package:pulumi/pulumi.dart';
import '../monitoring_schedule_monitoring_schedule_config/monitoring_schedule_monitoring_schedule_config.dart';
import 'monitoring_schedule_args.dart';

/// Provides a SageMaker AI monitoring schedule resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.MonitoringSchedule("test", {
/// name: "my-monitoring-schedule",
/// monitoringScheduleConfig: {
/// monitoringJobDefinitionName: testAwsSagemakerDataQualityJobDefinition.name,
/// monitoringType: "DataQuality",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.MonitoringSchedule("test",
/// name="my-monitoring-schedule",
/// monitoring_schedule_config={
/// "monitoring_job_definition_name": test_aws_sagemaker_data_quality_job_definition["name"],
/// "monitoring_type": "DataQuality",
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
/// var test = new Aws.Sagemaker.MonitoringSchedule("test", new()
/// {
/// Name = "my-monitoring-schedule",
/// MonitoringScheduleConfig = new Aws.Sagemaker.Inputs.MonitoringScheduleMonitoringScheduleConfigArgs
/// {
/// MonitoringJobDefinitionName = testAwsSagemakerDataQualityJobDefinition.Name,
/// MonitoringType = "DataQuality",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewMonitoringSchedule(ctx, "test", &sagemaker.MonitoringScheduleArgs{
/// Name: pulumi.String("my-monitoring-schedule"),
/// MonitoringScheduleConfig: &sagemaker.MonitoringScheduleMonitoringScheduleConfigArgs{
/// MonitoringJobDefinitionName: pulumi.Any(testAwsSagemakerDataQualityJobDefinition.Name),
/// MonitoringType:              pulumi.String("DataQuality"),
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
/// import com.pulumi.aws.sagemaker.MonitoringSchedule;
/// import com.pulumi.aws.sagemaker.MonitoringScheduleArgs;
/// import com.pulumi.aws.sagemaker.inputs.MonitoringScheduleMonitoringScheduleConfigArgs;
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
/// var test = new MonitoringSchedule("test", MonitoringScheduleArgs.builder()
/// .name("my-monitoring-schedule")
/// .monitoringScheduleConfig(MonitoringScheduleMonitoringScheduleConfigArgs.builder()
/// .monitoringJobDefinitionName(testAwsSagemakerDataQualityJobDefinition.name())
/// .monitoringType("DataQuality")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:sagemaker:MonitoringSchedule
/// properties:
/// name: my-monitoring-schedule
/// monitoringScheduleConfig:
/// monitoringJobDefinitionName: ${testAwsSagemakerDataQualityJobDefinition.name}
/// monitoringType: DataQuality
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import monitoring schedules using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/monitoringSchedule:MonitoringSchedule test_monitoring_schedule monitoring-schedule-foo
/// ```
class MonitoringSchedule extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this monitoring schedule.
  late final Output<String> arn;

  /// The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  late final Output<MonitoringScheduleMonitoringScheduleConfig>
      monitoringScheduleConfig;

  /// The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  MonitoringSchedule(
    String name, {
    MonitoringScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/monitoringSchedule:MonitoringSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.monitoringScheduleConfig =
        registerOutput<MonitoringScheduleMonitoringScheduleConfig>(
            'monitoringScheduleConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
