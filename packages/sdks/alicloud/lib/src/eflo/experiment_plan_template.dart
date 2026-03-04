import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_plan_template_args.dart';
import 'experiment_plan_template_state.dart';

/// Provides a Eflo Experiment Plan Template resource.
///
///
///
/// For information about Eflo Experiment Plan Template and how to use it, see [What is Experiment Plan Template](https://www.alibabacloud.com/help/en/pai/developer-reference/api-eflo-cnp-2023-08-28-createexperimentplantemplate).
///
/// &gt; **NOTE:** Available since v1.248.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.eflo.ExperimentPlanTemplate("default", {
///     templatePipelines: [{
///         workloadId: 2,
///         workloadName: "MatMul",
///         envParams: {
///             cpuPerWorker: 90,
///             gpuPerWorker: 8,
///             memoryPerWorker: 500,
///             shareMemory: 500,
///             workerNum: 1,
///             pyTorchVersion: "1",
///             gpuDriverVersion: "1",
///             cudaVersion: "1",
///             ncclVersion: "1",
///         },
///         pipelineOrder: 1,
///         scene: "baseline",
///     }],
///     privacyLevel: "private",
///     templateName: name,
///     templateDescription: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eflo.ExperimentPlanTemplate("default",
///     template_pipelines=[{
///         "workload_id": 2,
///         "workload_name": "MatMul",
///         "env_params": {
///             "cpu_per_worker": 90,
///             "gpu_per_worker": 8,
///             "memory_per_worker": 500,
///             "share_memory": 500,
///             "worker_num": 1,
///             "py_torch_version": "1",
///             "gpu_driver_version": "1",
///             "cuda_version": "1",
///             "nccl_version": "1",
///         },
///         "pipeline_order": 1,
///         "scene": "baseline",
///     }],
///     privacy_level="private",
///     template_name=name,
///     template_description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Eflo.ExperimentPlanTemplate("default", new()
///     {
///         TemplatePipelines = new[]
///         {
///             new AliCloud.Eflo.Inputs.ExperimentPlanTemplateTemplatePipelineArgs
///             {
///                 WorkloadId = 2,
///                 WorkloadName = "MatMul",
///                 EnvParams = new AliCloud.Eflo.Inputs.ExperimentPlanTemplateTemplatePipelineEnvParamsArgs
///                 {
///                     CpuPerWorker = 90,
///                     GpuPerWorker = 8,
///                     MemoryPerWorker = 500,
///                     ShareMemory = 500,
///                     WorkerNum = 1,
///                     PyTorchVersion = "1",
///                     GpuDriverVersion = "1",
///                     CudaVersion = "1",
///                     NcclVersion = "1",
///                 },
///                 PipelineOrder = 1,
///                 Scene = "baseline",
///             },
///         },
///         PrivacyLevel = "private",
///         TemplateName = name,
///         TemplateDescription = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := eflo.NewExperimentPlanTemplate(ctx, "default", &eflo.ExperimentPlanTemplateArgs{
/// 			TemplatePipelines: eflo.ExperimentPlanTemplateTemplatePipelineArray{
/// 				&eflo.ExperimentPlanTemplateTemplatePipelineArgs{
/// 					WorkloadId:   pulumi.Int(2),
/// 					WorkloadName: pulumi.String("MatMul"),
/// 					EnvParams: &eflo.ExperimentPlanTemplateTemplatePipelineEnvParamsArgs{
/// 						CpuPerWorker:     pulumi.Int(90),
/// 						GpuPerWorker:     pulumi.Int(8),
/// 						MemoryPerWorker:  pulumi.Int(500),
/// 						ShareMemory:      pulumi.Int(500),
/// 						WorkerNum:        pulumi.Int(1),
/// 						PyTorchVersion:   pulumi.String("1"),
/// 						GpuDriverVersion: pulumi.String("1"),
/// 						CudaVersion:      pulumi.String("1"),
/// 						NcclVersion:      pulumi.String("1"),
/// 					},
/// 					PipelineOrder: pulumi.Int(1),
/// 					Scene:         pulumi.String("baseline"),
/// 				},
/// 			},
/// 			PrivacyLevel:        pulumi.String("private"),
/// 			TemplateName:        pulumi.String(name),
/// 			TemplateDescription: pulumi.String(name),
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
/// import com.pulumi.alicloud.eflo.ExperimentPlanTemplate;
/// import com.pulumi.alicloud.eflo.ExperimentPlanTemplateArgs;
/// import com.pulumi.alicloud.eflo.inputs.ExperimentPlanTemplateTemplatePipelineArgs;
/// import com.pulumi.alicloud.eflo.inputs.ExperimentPlanTemplateTemplatePipelineEnvParamsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new ExperimentPlanTemplate("default", ExperimentPlanTemplateArgs.builder()
///             .templatePipelines(ExperimentPlanTemplateTemplatePipelineArgs.builder()
///                 .workloadId(2)
///                 .workloadName("MatMul")
///                 .envParams(ExperimentPlanTemplateTemplatePipelineEnvParamsArgs.builder()
///                     .cpuPerWorker(90)
///                     .gpuPerWorker(8)
///                     .memoryPerWorker(500)
///                     .shareMemory(500)
///                     .workerNum(1)
///                     .pyTorchVersion("1")
///                     .gpuDriverVersion("1")
///                     .cudaVersion("1")
///                     .ncclVersion("1")
///                     .build())
///                 .pipelineOrder(1)
///                 .scene("baseline")
///                 .build())
///             .privacyLevel("private")
///             .templateName(name)
///             .templateDescription(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:eflo:ExperimentPlanTemplate
///     properties:
///       templatePipelines:
///         - workloadId: '2'
///           workloadName: MatMul
///           envParams:
///             cpuPerWorker: '90'
///             gpuPerWorker: '8'
///             memoryPerWorker: '500'
///             shareMemory: '500'
///             workerNum: '1'
///             pyTorchVersion: '1'
///             gpuDriverVersion: '1'
///             cudaVersion: '1'
///             ncclVersion: '1'
///           pipelineOrder: '1'
///           scene: baseline
///       privacyLevel: private
///       templateName: ${name}
///       templateDescription: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Experiment Plan Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/experimentPlanTemplate:ExperimentPlanTemplate example <id>
/// ```
class ExperimentPlanTemplate extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Used to indicate the privacy level of the content or information. It can have the following optional parameters:
  /// - private: Indicates that the content is private and restricted to specific users or permission groups. Private content is usually not publicly displayed, and only authorized users can view or edit it.
  /// - public: Indicates that the content is public and can be accessed by anyone. Public content is usually viewable by all users and is suitable for sharing information or resources
  late final pulumi.Output<String> privacyLevel;

  /// Describe the purpose of this template.
  late final pulumi.Output<String?> templateDescription;

  /// The ID of the template.
  late final pulumi.Output<String> templateId;

  /// Help users identify and select specific templates.
  late final pulumi.Output<String> templateName;

  /// Representative Template Pipeline. See `template_pipeline` below.
  late final pulumi.Output<List<Map<String, dynamic>>> templatePipelines;

  /// Creates a new [ExperimentPlanTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExperimentPlanTemplate]. {@macro pulumi_eflo_experiment_plan_template_experiment_plan_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExperimentPlanTemplate(
    String name, {
    ExperimentPlanTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/experimentPlanTemplate:ExperimentPlanTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    privacyLevel = registerOutput<String>('privacyLevel');
    templateDescription = registerOutput<String?>('templateDescription');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templatePipelines = registerOutput<List<Map<String, dynamic>>>(
      'templatePipelines',
    );
  }

  /// Gets an existing [ExperimentPlanTemplate] resource's state with the given [name] and [id].
  static ExperimentPlanTemplate get(
    String name,
    pulumi.Input<String> id, {
    ExperimentPlanTemplateState? state,
  }) {
    return ExperimentPlanTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExperimentPlanTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/experimentPlanTemplate:ExperimentPlanTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    privacyLevel = registerOutput<String>('privacyLevel');
    templateDescription = registerOutput<String?>('templateDescription');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templatePipelines = registerOutput<List<Map<String, dynamic>>>(
      'templatePipelines',
    );
  }
}
