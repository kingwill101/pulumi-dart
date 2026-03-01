import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_schedule_args.dart';
import 'trigger_schedule_pipeline.dart';
import 'trigger_schedule_schedule.dart';

/// Manages a Trigger Schedule inside a Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePipeline = new azure.datafactory.Pipeline("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
/// });
/// const exampleTriggerSchedule = new azure.datafactory.TriggerSchedule("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     pipelineName: examplePipeline.name,
///     interval: 5,
///     frequency: "Day",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_pipeline = azure.datafactory.Pipeline("example",
///     name="example",
///     data_factory_id=example_factory.id)
/// example_trigger_schedule = azure.datafactory.TriggerSchedule("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     pipeline_name=example_pipeline.name,
///     interval=5,
///     frequency="Day")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePipeline = new Azure.DataFactory.Pipeline("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///     });
///
///     var exampleTriggerSchedule = new Azure.DataFactory.TriggerSchedule("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         PipelineName = examplePipeline.Name,
///         Interval = 5,
///         Frequency = "Day",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePipeline, err := datafactory.NewPipeline(ctx, "example", &datafactory.PipelineArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewTriggerSchedule(ctx, "example", &datafactory.TriggerScheduleArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			PipelineName:  examplePipeline.Name,
/// 			Interval:      pulumi.Int(5),
/// 			Frequency:     pulumi.String("Day"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.Pipeline;
/// import com.pulumi.azure.datafactory.PipelineArgs;
/// import com.pulumi.azure.datafactory.TriggerSchedule;
/// import com.pulumi.azure.datafactory.TriggerScheduleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .build());
///
///         var exampleTriggerSchedule = new TriggerSchedule("exampleTriggerSchedule", TriggerScheduleArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .pipelineName(examplePipeline.name())
///             .interval(5)
///             .frequency("Day")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePipeline:
///     type: azure:datafactory:Pipeline
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///   exampleTriggerSchedule:
///     type: azure:datafactory:TriggerSchedule
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       pipelineName: ${examplePipeline.name}
///       interval: 5
///       frequency: Day
/// ```
///
///
/// ## Import
///
/// Data Factory Schedule Trigger can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/triggerSchedule:TriggerSchedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/triggers/example
/// ```
class TriggerSchedule extends pulumi.CustomResource {
  /// Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`.
  late final pulumi.Output<bool?> activated;
  /// List of tags that can be used for describing the Data Factory Schedule Trigger.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The Schedule Trigger's description.
  late final pulumi.Output<String?> description;
  /// The time the Schedule Trigger should end. The time will be represented in UTC.
  late final pulumi.Output<String?> endTime;
  /// The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`.
  late final pulumi.Output<String?> frequency;
  /// The interval for how often the trigger occurs. This defaults to `1`.
  late final pulumi.Output<int?> interval;
  /// Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// The Data Factory Pipeline name that the trigger will act on.
  late final pulumi.Output<String> pipelineName;
  /// The pipeline parameters that the trigger will act upon.
  late final pulumi.Output<Map<String, String>> pipelineParameters;
  /// A `pipeline` block as defined below.
  late final pulumi.Output<List<TriggerSchedulePipeline>> pipelines;
  /// A `schedule` block as defined below, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties.
  late final pulumi.Output<TriggerScheduleSchedule?> schedule;
  /// The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC.
  late final pulumi.Output<String> startTime;
  /// The timezone of the start/end time.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [TriggerSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerSchedule]. {@macro pulumi_datafactory_trigger_schedule_trigger_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerSchedule(
    String name, {
    TriggerScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerSchedule:TriggerSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activated = registerOutput<bool?>('activated');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.endTime = registerOutput<String?>('endTime');
    this.frequency = registerOutput<String?>('frequency');
    this.interval = registerOutput<int?>('interval');
    this.name = registerOutput<String>('name');
    this.pipelineName = registerOutput<String>('pipelineName');
    this.pipelineParameters = registerOutput<Map<String, String>>('pipelineParameters');
    this.pipelines = registerOutput<List<TriggerSchedulePipeline>>('pipelines');
    this.schedule = registerOutput<TriggerScheduleSchedule?>('schedule');
    this.startTime = registerOutput<String>('startTime');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
