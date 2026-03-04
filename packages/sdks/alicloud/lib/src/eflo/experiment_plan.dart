import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_plan_args.dart';
import 'experiment_plan_state.dart';

/// Provides a Eflo Experiment Plan resource.
///
///
///
/// For information about Eflo Experiment Plan and how to use it, see [What is Experiment Plan](https://www.alibabacloud.com/help/en/pai/developer-reference/api-eflo-cnp-2023-08-28-createexperimentplan).
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultpSZN7t = new alicloud.eflo.ExperimentPlanTemplate("defaultpSZN7t", {
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
/// const defaultResource = new alicloud.eflo.Resource("default", {
///     userAccessParam: {
///         accessId: "your_access_id",
///         accessKey: "your_access_key",
///         workspaceId: "your_workspace_id",
///         endpoint: "your_endpoint",
///     },
///     clusterId: `terraform-${_default.result}`,
///     machineTypes: {
///         memoryInfo: "32x 64GB DDR4 4800 Memory",
///         type: "Private",
///         bondNum: 5,
///         nodeCount: 1,
///         cpuInfo: "2x Intel Saphhire Rapid 8469C 48C CPU",
///         networkInfo: "1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC",
///         gpuInfo: "8x OAM 810 GPU",
///         diskInfo: "2x 480GB SATA SSD 4x 3.84TB NVMe SSD",
///         networkMode: "net",
///         name: "lingjun",
///     },
///     clusterName: name,
///     clusterDesc: name,
/// });
/// const defaultExperimentPlan = new alicloud.eflo.ExperimentPlan("default", {
///     resourceId: defaultResource.resourceId,
///     planName: name,
///     templateId: defaultpSZN7t.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// defaultp_szn7t = alicloud.eflo.ExperimentPlanTemplate("defaultpSZN7t",
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
/// default_resource = alicloud.eflo.Resource("default",
///     user_access_param={
///         "access_id": "your_access_id",
///         "access_key": "your_access_key",
///         "workspace_id": "your_workspace_id",
///         "endpoint": "your_endpoint",
///     },
///     cluster_id=f"terraform-{default['result']}",
///     machine_types={
///         "memory_info": "32x 64GB DDR4 4800 Memory",
///         "type": "Private",
///         "bond_num": 5,
///         "node_count": 1,
///         "cpu_info": "2x Intel Saphhire Rapid 8469C 48C CPU",
///         "network_info": "1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC",
///         "gpu_info": "8x OAM 810 GPU",
///         "disk_info": "2x 480GB SATA SSD 4x 3.84TB NVMe SSD",
///         "network_mode": "net",
///         "name": "lingjun",
///     },
///     cluster_name=name,
///     cluster_desc=name)
/// default_experiment_plan = alicloud.eflo.ExperimentPlan("default",
///     resource_id=default_resource.resource_id,
///     plan_name=name,
///     template_id=defaultp_szn7t.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultpSZN7t = new AliCloud.Eflo.ExperimentPlanTemplate("defaultpSZN7t", new()
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
///     var defaultResource = new AliCloud.Eflo.Resource("default", new()
///     {
///         UserAccessParam = new AliCloud.Eflo.Inputs.ResourceUserAccessParamArgs
///         {
///             AccessId = "your_access_id",
///             AccessKey = "your_access_key",
///             WorkspaceId = "your_workspace_id",
///             Endpoint = "your_endpoint",
///         },
///         ClusterId = $"terraform-{@default.Result}",
///         MachineTypes = new AliCloud.Eflo.Inputs.ResourceMachineTypesArgs
///         {
///             MemoryInfo = "32x 64GB DDR4 4800 Memory",
///             Type = "Private",
///             BondNum = 5,
///             NodeCount = 1,
///             CpuInfo = "2x Intel Saphhire Rapid 8469C 48C CPU",
///             NetworkInfo = "1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC",
///             GpuInfo = "8x OAM 810 GPU",
///             DiskInfo = "2x 480GB SATA SSD 4x 3.84TB NVMe SSD",
///             NetworkMode = "net",
///             Name = "lingjun",
///         },
///         ClusterName = name,
///         ClusterDesc = name,
///     });
///
///     var defaultExperimentPlan = new AliCloud.Eflo.ExperimentPlan("default", new()
///     {
///         ResourceId = defaultResource.ResourceId,
///         PlanName = name,
///         TemplateId = defaultpSZN7t.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultpSZN7t, err := eflo.NewExperimentPlanTemplate(ctx, "defaultpSZN7t", &eflo.ExperimentPlanTemplateArgs{
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
/// 		defaultResource, err := eflo.NewResource(ctx, "default", &eflo.ResourceArgs{
/// 			UserAccessParam: &eflo.ResourceUserAccessParamArgs{
/// 				AccessId:    pulumi.String("your_access_id"),
/// 				AccessKey:   pulumi.String("your_access_key"),
/// 				WorkspaceId: pulumi.String("your_workspace_id"),
/// 				Endpoint:    pulumi.String("your_endpoint"),
/// 			},
/// 			ClusterId: pulumi.Sprintf("terraform-%v", _default.Result),
/// 			MachineTypes: &eflo.ResourceMachineTypesArgs{
/// 				MemoryInfo:  pulumi.String("32x 64GB DDR4 4800 Memory"),
/// 				Type:        pulumi.String("Private"),
/// 				BondNum:     pulumi.Int(5),
/// 				NodeCount:   pulumi.Int(1),
/// 				CpuInfo:     pulumi.String("2x Intel Saphhire Rapid 8469C 48C CPU"),
/// 				NetworkInfo: pulumi.String("1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC"),
/// 				GpuInfo:     pulumi.String("8x OAM 810 GPU"),
/// 				DiskInfo:    pulumi.String("2x 480GB SATA SSD 4x 3.84TB NVMe SSD"),
/// 				NetworkMode: pulumi.String("net"),
/// 				Name:        pulumi.String("lingjun"),
/// 			},
/// 			ClusterName: pulumi.String(name),
/// 			ClusterDesc: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewExperimentPlan(ctx, "default", &eflo.ExperimentPlanArgs{
/// 			ResourceId: defaultResource.ResourceId,
/// 			PlanName:   pulumi.String(name),
/// 			TemplateId: defaultpSZN7t.ID(),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eflo.ExperimentPlanTemplate;
/// import com.pulumi.alicloud.eflo.ExperimentPlanTemplateArgs;
/// import com.pulumi.alicloud.eflo.inputs.ExperimentPlanTemplateTemplatePipelineArgs;
/// import com.pulumi.alicloud.eflo.inputs.ExperimentPlanTemplateTemplatePipelineEnvParamsArgs;
/// import com.pulumi.alicloud.eflo.Resource;
/// import com.pulumi.alicloud.eflo.ResourceArgs;
/// import com.pulumi.alicloud.eflo.inputs.ResourceUserAccessParamArgs;
/// import com.pulumi.alicloud.eflo.inputs.ResourceMachineTypesArgs;
/// import com.pulumi.alicloud.eflo.ExperimentPlan;
/// import com.pulumi.alicloud.eflo.ExperimentPlanArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultpSZN7t = new ExperimentPlanTemplate("defaultpSZN7t", ExperimentPlanTemplateArgs.builder()
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
///         var defaultResource = new Resource("defaultResource", ResourceArgs.builder()
///             .userAccessParam(ResourceUserAccessParamArgs.builder()
///                 .accessId("your_access_id")
///                 .accessKey("your_access_key")
///                 .workspaceId("your_workspace_id")
///                 .endpoint("your_endpoint")
///                 .build())
///             .clusterId(String.format("terraform-%s", default_.result()))
///             .machineTypes(ResourceMachineTypesArgs.builder()
///                 .memoryInfo("32x 64GB DDR4 4800 Memory")
///                 .type("Private")
///                 .bondNum(5)
///                 .nodeCount(1)
///                 .cpuInfo("2x Intel Saphhire Rapid 8469C 48C CPU")
///                 .networkInfo("1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC")
///                 .gpuInfo("8x OAM 810 GPU")
///                 .diskInfo("2x 480GB SATA SSD 4x 3.84TB NVMe SSD")
///                 .networkMode("net")
///                 .name("lingjun")
///                 .build())
///             .clusterName(name)
///             .clusterDesc(name)
///             .build());
///
///         var defaultExperimentPlan = new ExperimentPlan("defaultExperimentPlan", ExperimentPlanArgs.builder()
///             .resourceId(defaultResource.resourceId())
///             .planName(name)
///             .templateId(defaultpSZN7t.id())
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultpSZN7t:
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
///   defaultResource:
///     type: alicloud:eflo:Resource
///     name: default
///     properties:
///       userAccessParam:
///         accessId: your_access_id
///         accessKey: your_access_key
///         workspaceId: your_workspace_id
///         endpoint: your_endpoint
///       clusterId: terraform-${default.result}
///       machineTypes:
///         memoryInfo: 32x 64GB DDR4 4800 Memory
///         type: Private
///         bondNum: '5'
///         nodeCount: '1'
///         cpuInfo: 2x Intel Saphhire Rapid 8469C 48C CPU
///         networkInfo: 1x 200Gbps Dual Port BF3 DPU for VPC 4x 200Gbps Dual Port EIC
///         gpuInfo: 8x OAM 810 GPU
///         diskInfo: 2x 480GB SATA SSD 4x 3.84TB NVMe SSD
///         networkMode: net
///         name: lingjun
///       clusterName: ${name}
///       clusterDesc: ${name}
///   defaultExperimentPlan:
///     type: alicloud:eflo:ExperimentPlan
///     name: default
///     properties:
///       resourceId: ${defaultResource.resourceId}
///       planName: ${name}
///       templateId: ${defaultpSZN7t.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Experiment Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/experimentPlan:ExperimentPlan example <id>
/// ```
class ExperimentPlan extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Additional operating parameters. You can include information about the specified node.
  late final pulumi.Output<Map<String, String>?> externalParams;

  /// Indicates the name of the experiment plan, which is used to distinguish different experiment plans.
  late final pulumi.Output<String> planName;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The ID of the resource.
  late final pulumi.Output<int> resourceId;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the template.
  late final pulumi.Output<int> templateId;

  /// Creates a new [ExperimentPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExperimentPlan]. {@macro pulumi_eflo_experiment_plan_experiment_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExperimentPlan(
    String name, {
    ExperimentPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/experimentPlan:ExperimentPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    externalParams = registerOutput<Map<String, String>?>('externalParams');
    planName = registerOutput<String>('planName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceId = registerOutput<int>('resourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    templateId = registerOutput<int>('templateId');
  }

  /// Gets an existing [ExperimentPlan] resource's state with the given [name] and [id].
  static ExperimentPlan get(
    String name,
    pulumi.Input<String> id, {
    ExperimentPlanState? state,
  }) {
    return ExperimentPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExperimentPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/experimentPlan:ExperimentPlan',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    externalParams = registerOutput<Map<String, String>?>('externalParams');
    planName = registerOutput<String>('planName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceId = registerOutput<int>('resourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    templateId = registerOutput<int>('templateId');
  }
}
