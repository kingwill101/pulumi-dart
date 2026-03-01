import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_args.dart';
import 'monitoring_schedule_monitoring_schedule_config.dart';

/// Provides a SageMaker AI monitoring schedule resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.MonitoringSchedule("test", {
///     name: "my-monitoring-schedule",
///     monitoringScheduleConfig: {
///         monitoringJobDefinitionName: testAwsSagemakerDataQualityJobDefinition.name,
///         monitoringType: "DataQuality",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.MonitoringSchedule("test",
///     name="my-monitoring-schedule",
///     monitoring_schedule_config={
///         "monitoring_job_definition_name": test_aws_sagemaker_data_quality_job_definition["name"],
///         "monitoring_type": "DataQuality",
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
///     var test = new Aws.Sagemaker.MonitoringSchedule("test", new()
///     {
///         Name = "my-monitoring-schedule",
///         MonitoringScheduleConfig = new Aws.Sagemaker.Inputs.MonitoringScheduleMonitoringScheduleConfigArgs
///         {
///             MonitoringJobDefinitionName = testAwsSagemakerDataQualityJobDefinition.Name,
///             MonitoringType = "DataQuality",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewMonitoringSchedule(ctx, "test", &sagemaker.MonitoringScheduleArgs{
/// 			Name: pulumi.String("my-monitoring-schedule"),
/// 			MonitoringScheduleConfig: &sagemaker.MonitoringScheduleMonitoringScheduleConfigArgs{
/// 				MonitoringJobDefinitionName: pulumi.Any(testAwsSagemakerDataQualityJobDefinition.Name),
/// 				MonitoringType:              pulumi.String("DataQuality"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new MonitoringSchedule("test", MonitoringScheduleArgs.builder()
///             .name("my-monitoring-schedule")
///             .monitoringScheduleConfig(MonitoringScheduleMonitoringScheduleConfigArgs.builder()
///                 .monitoringJobDefinitionName(testAwsSagemakerDataQualityJobDefinition.name())
///                 .monitoringType("DataQuality")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:MonitoringSchedule
///     properties:
///       name: my-monitoring-schedule
///       monitoringScheduleConfig:
///         monitoringJobDefinitionName: ${testAwsSagemakerDataQualityJobDefinition.name}
///         monitoringType: DataQuality
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import monitoring schedules using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/monitoringSchedule:MonitoringSchedule test_monitoring_schedule monitoring-schedule-foo
/// ```
class MonitoringSchedule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this monitoring schedule.
  late final pulumi.Output<String> arn;
  /// The configuration object that specifies the monitoring schedule and defines the monitoring job. Fields are documented below.
  late final pulumi.Output<MonitoringScheduleMonitoringScheduleConfig> monitoringScheduleConfig;
  /// The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [MonitoringSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoringSchedule]. {@macro pulumi_sagemaker_monitoring_schedule_monitoring_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoringSchedule(
    String name, {
    MonitoringScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/monitoringSchedule:MonitoringSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.monitoringScheduleConfig = registerOutput<MonitoringScheduleMonitoringScheduleConfig>('monitoringScheduleConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
