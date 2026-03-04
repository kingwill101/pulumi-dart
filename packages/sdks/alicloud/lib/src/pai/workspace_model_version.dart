import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_model_version_args.dart';
import 'workspace_model_version_state.dart';

/// Provides a PAI Workspace Model Version resource.
///
///
///
/// For information about PAI Workspace Model Version and how to use it, see [What is Model Version](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateModelVersion).
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
/// const name = config.get("name") || "terraform_example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultDI9fsL = new alicloud.pai.WorkspaceWorkspace("defaultDI9fsL", {
///     description: "802",
///     displayName: name,
///     workspaceName: `${name}_${_default.result}`,
///     envTypes: ["prod"],
/// });
/// const defaultsHptEL = new alicloud.pai.WorkspaceModel("defaultsHptEL", {
///     modelName: name,
///     workspaceId: defaultDI9fsL.id,
///     origin: "Civitai",
///     task: "text-to-image-synthesis",
///     accessibility: "PRIVATE",
///     modelType: "Checkpoint",
///     orderNumber: 1,
///     modelDescription: "ModelDescription.",
///     modelDoc: "https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///     domain: "aigc",
///     labels: [{
///         key: "base_model",
///         value: "SD 1.5",
///     }],
///     extraInfo: {
///         test: "15",
///     },
/// });
/// const defaultWorkspaceModelVersion = new alicloud.pai.WorkspaceModelVersion("default", {
///     versionDescription: "VersionDescription.",
///     sourceType: "TrainingService",
///     sourceId: "region=${region},workspaceId=${workspace_id},kind=TrainingJob,id=job-id",
///     extraInfo: {
///         test: "15",
///     },
///     trainingSpec: {
///         test: "TrainingSpec",
///     },
///     uri: "oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/",
///     inferenceSpec: {
///         test: "InferenceSpec",
///     },
///     modelId: defaultsHptEL.id,
///     formatType: "SavedModel",
///     approvalStatus: "Pending",
///     frameworkType: "PyTorch",
///     versionName: "1.0.0",
///     metrics: {},
///     labels: [{
///         key: "k1",
///         value: "vs1",
///     }],
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
///     name = "terraform_example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_di9fs_l = alicloud.pai.WorkspaceWorkspace("defaultDI9fsL",
///     description="802",
///     display_name=name,
///     workspace_name=f"{name}_{default['result']}",
///     env_types=["prod"])
/// defaults_hpt_el = alicloud.pai.WorkspaceModel("defaultsHptEL",
///     model_name=name,
///     workspace_id=default_di9fs_l.id,
///     origin="Civitai",
///     task="text-to-image-synthesis",
///     accessibility="PRIVATE",
///     model_type="Checkpoint",
///     order_number=1,
///     model_description="ModelDescription.",
///     model_doc="https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///     domain="aigc",
///     labels=[{
///         "key": "base_model",
///         "value": "SD 1.5",
///     }],
///     extra_info={
///         "test": "15",
///     })
/// default_workspace_model_version = alicloud.pai.WorkspaceModelVersion("default",
///     version_description="VersionDescription.",
///     source_type="TrainingService",
///     source_id="region=${region},workspaceId=${workspace_id},kind=TrainingJob,id=job-id",
///     extra_info={
///         "test": "15",
///     },
///     training_spec={
///         "test": "TrainingSpec",
///     },
///     uri="oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/",
///     inference_spec={
///         "test": "InferenceSpec",
///     },
///     model_id=defaults_hpt_el.id,
///     format_type="SavedModel",
///     approval_status="Pending",
///     framework_type="PyTorch",
///     version_name="1.0.0",
///     metrics={},
///     labels=[{
///         "key": "k1",
///         "value": "vs1",
///     }])
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
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultDI9fsL = new AliCloud.Pai.WorkspaceWorkspace("defaultDI9fsL", new()
///     {
///         Description = "802",
///         DisplayName = name,
///         WorkspaceName = $"{name}_{@default.Result}",
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var defaultsHptEL = new AliCloud.Pai.WorkspaceModel("defaultsHptEL", new()
///     {
///         ModelName = name,
///         WorkspaceId = defaultDI9fsL.Id,
///         Origin = "Civitai",
///         Task = "text-to-image-synthesis",
///         Accessibility = "PRIVATE",
///         ModelType = "Checkpoint",
///         OrderNumber = 1,
///         ModelDescription = "ModelDescription.",
///         ModelDoc = "https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///         Domain = "aigc",
///         Labels = new[]
///         {
///             new AliCloud.Pai.Inputs.WorkspaceModelLabelArgs
///             {
///                 Key = "base_model",
///                 Value = "SD 1.5",
///             },
///         },
///         ExtraInfo =
///         {
///             { "test", "15" },
///         },
///     });
///
///     var defaultWorkspaceModelVersion = new AliCloud.Pai.WorkspaceModelVersion("default", new()
///     {
///         VersionDescription = "VersionDescription.",
///         SourceType = "TrainingService",
///         SourceId = "region=${region},workspaceId=${workspace_id},kind=TrainingJob,id=job-id",
///         ExtraInfo =
///         {
///             { "test", "15" },
///         },
///         TrainingSpec =
///         {
///             { "test", "TrainingSpec" },
///         },
///         Uri = "oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/",
///         InferenceSpec =
///         {
///             { "test", "InferenceSpec" },
///         },
///         ModelId = defaultsHptEL.Id,
///         FormatType = "SavedModel",
///         ApprovalStatus = "Pending",
///         FrameworkType = "PyTorch",
///         VersionName = "1.0.0",
///         Metrics = null,
///         Labels = new[]
///         {
///             new AliCloud.Pai.Inputs.WorkspaceModelVersionLabelArgs
///             {
///                 Key = "k1",
///                 Value = "vs1",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
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
/// 		defaultDI9fsL, err := pai.NewWorkspaceWorkspace(ctx, "defaultDI9fsL", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String("802"),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultsHptEL, err := pai.NewWorkspaceModel(ctx, "defaultsHptEL", &pai.WorkspaceModelArgs{
/// 			ModelName:        pulumi.String(name),
/// 			WorkspaceId:      defaultDI9fsL.ID(),
/// 			Origin:           pulumi.String("Civitai"),
/// 			Task:             pulumi.String("text-to-image-synthesis"),
/// 			Accessibility:    pulumi.String("PRIVATE"),
/// 			ModelType:        pulumi.String("Checkpoint"),
/// 			OrderNumber:      pulumi.Int(1),
/// 			ModelDescription: pulumi.String("ModelDescription."),
/// 			ModelDoc:         pulumi.String("https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors"),
/// 			Domain:           pulumi.String("aigc"),
/// 			Labels: pai.WorkspaceModelLabelArray{
/// 				&pai.WorkspaceModelLabelArgs{
/// 					Key:   pulumi.String("base_model"),
/// 					Value: pulumi.String("SD 1.5"),
/// 				},
/// 			},
/// 			ExtraInfo: pulumi.StringMap{
/// 				"test": pulumi.String("15"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewWorkspaceModelVersion(ctx, "default", &pai.WorkspaceModelVersionArgs{
/// 			VersionDescription: pulumi.String("VersionDescription."),
/// 			SourceType:         pulumi.String("TrainingService"),
/// 			SourceId:           pulumi.String("region=${region},workspaceId=${workspace_id},kind=TrainingJob,id=job-id"),
/// 			ExtraInfo: pulumi.StringMap{
/// 				"test": pulumi.String("15"),
/// 			},
/// 			TrainingSpec: pulumi.StringMap{
/// 				"test": pulumi.String("TrainingSpec"),
/// 			},
/// 			Uri: pulumi.String("oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/"),
/// 			InferenceSpec: pulumi.StringMap{
/// 				"test": pulumi.String("InferenceSpec"),
/// 			},
/// 			ModelId:        defaultsHptEL.ID(),
/// 			FormatType:     pulumi.String("SavedModel"),
/// 			ApprovalStatus: pulumi.String("Pending"),
/// 			FrameworkType:  pulumi.String("PyTorch"),
/// 			VersionName:    pulumi.String("1.0.0"),
/// 			Metrics:        pulumi.StringMap{},
/// 			Labels: pai.WorkspaceModelVersionLabelArray{
/// 				&pai.WorkspaceModelVersionLabelArgs{
/// 					Key:   pulumi.String("k1"),
/// 					Value: pulumi.String("vs1"),
/// 				},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspace;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspaceArgs;
/// import com.pulumi.alicloud.pai.WorkspaceModel;
/// import com.pulumi.alicloud.pai.WorkspaceModelArgs;
/// import com.pulumi.alicloud.pai.inputs.WorkspaceModelLabelArgs;
/// import com.pulumi.alicloud.pai.WorkspaceModelVersion;
/// import com.pulumi.alicloud.pai.WorkspaceModelVersionArgs;
/// import com.pulumi.alicloud.pai.inputs.WorkspaceModelVersionLabelArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultDI9fsL = new WorkspaceWorkspace("defaultDI9fsL", WorkspaceWorkspaceArgs.builder()
///             .description("802")
///             .displayName(name)
///             .workspaceName(String.format("%s_%s", name,default_.result()))
///             .envTypes("prod")
///             .build());
///
///         var defaultsHptEL = new WorkspaceModel("defaultsHptEL", WorkspaceModelArgs.builder()
///             .modelName(name)
///             .workspaceId(defaultDI9fsL.id())
///             .origin("Civitai")
///             .task("text-to-image-synthesis")
///             .accessibility("PRIVATE")
///             .modelType("Checkpoint")
///             .orderNumber(1)
///             .modelDescription("ModelDescription.")
///             .modelDoc("https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors")
///             .domain("aigc")
///             .labels(WorkspaceModelLabelArgs.builder()
///                 .key("base_model")
///                 .value("SD 1.5")
///                 .build())
///             .extraInfo(Map.of("test", "15"))
///             .build());
///
///         var defaultWorkspaceModelVersion = new WorkspaceModelVersion("defaultWorkspaceModelVersion", WorkspaceModelVersionArgs.builder()
///             .versionDescription("VersionDescription.")
///             .sourceType("TrainingService")
///             .sourceId("region=${region},workspaceId=${workspace_id},kind=TrainingJob,id=job-id")
///             .extraInfo(Map.of("test", "15"))
///             .trainingSpec(Map.of("test", "TrainingSpec"))
///             .uri("oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/")
///             .inferenceSpec(Map.of("test", "InferenceSpec"))
///             .modelId(defaultsHptEL.id())
///             .formatType("SavedModel")
///             .approvalStatus("Pending")
///             .frameworkType("PyTorch")
///             .versionName("1.0.0")
///             .metrics(Map.ofEntries(
///             ))
///             .labels(WorkspaceModelVersionLabelArgs.builder()
///                 .key("k1")
///                 .value("vs1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultDI9fsL:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: '802'
///       displayName: ${name}
///       workspaceName: ${name}_${default.result}
///       envTypes:
///         - prod
///   defaultsHptEL:
///     type: alicloud:pai:WorkspaceModel
///     properties:
///       modelName: ${name}
///       workspaceId: ${defaultDI9fsL.id}
///       origin: Civitai
///       task: text-to-image-synthesis
///       accessibility: PRIVATE
///       modelType: Checkpoint
///       orderNumber: '1'
///       modelDescription: ModelDescription.
///       modelDoc: https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors
///       domain: aigc
///       labels:
///         - key: base_model
///           value: SD 1.5
///       extraInfo:
///         test: '15'
///   defaultWorkspaceModelVersion:
///     type: alicloud:pai:WorkspaceModelVersion
///     name: default
///     properties:
///       versionDescription: VersionDescription.
///       sourceType: TrainingService
///       sourceId: region=$${region},workspaceId=$${workspace_id},kind=TrainingJob,id=job-id
///       extraInfo:
///         test: '15'
///       trainingSpec:
///         test: TrainingSpec
///       uri: oss://hz-example-0701.oss-cn-hangzhou-internal.aliyuncs.com/checkpoints/
///       inferenceSpec:
///         test: InferenceSpec
///       modelId: ${defaultsHptEL.id}
///       formatType: SavedModel
///       approvalStatus: Pending
///       frameworkType: PyTorch
///       versionName: 1.0.0
///       metrics: {}
///       labels:
///         - key: k1
///           value: vs1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Model Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceModelVersion:WorkspaceModelVersion example <model_id>:<version_name>
/// ```
class WorkspaceModelVersion extends pulumi.CustomResource {
  /// The approval status. Valid values:
  /// - Pending: To be determined.
  /// - Approved: Allow to go online.
  /// - Rejected: Online is not allowed.
  late final pulumi.Output<String> approvalStatus;

  /// Other information.
  late final pulumi.Output<Map<String, String>?> extraInfo;

  /// The format of the model. Valid values:
  /// - OfflineModel
  /// - SavedModel
  /// - Keras H5
  /// - Frozen Pb
  /// - Caffe Prototxt
  /// - TorchScript
  /// - XGBoost
  /// - PMML
  /// - AlinkModel
  /// - ONNX
  late final pulumi.Output<String?> formatType;

  /// The framework of the model. Valid values:
  /// - Pytorch
  /// - XGBoost
  /// - Keras
  /// - Caffe
  /// - Alink
  /// - Xflow
  /// - TensorFlow
  late final pulumi.Output<String?> frameworkType;

  /// Describes how to apply to downstream inference services.
  late final pulumi.Output<Map<String, String>?> inferenceSpec;

  /// List of model version labels. See `labels` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;

  /// The metrics for the model. The serialized length is limited to 8192.
  late final pulumi.Output<Map<String, String>?> metrics;

  /// The model ID.
  late final pulumi.Output<String> modelId;

  /// The extended field. This is a JSON string.
  late final pulumi.Output<String?> options;

  /// The source ID.
  late final pulumi.Output<String?> sourceId;

  /// The type of the model source. Valid values:
  /// - Custom: Custom.
  /// - PAIFlow:PAI workflow.
  /// - TrainingService:PAI training service.
  late final pulumi.Output<String> sourceType;

  /// The training configurations. Used for fine-tuning and incremental training.
  late final pulumi.Output<Map<String, String>?> trainingSpec;

  /// The URI of the model version.
  late final pulumi.Output<String> uri;

  /// The version descriptions.
  late final pulumi.Output<String?> versionDescription;

  /// The Model version.
  late final pulumi.Output<String> versionName;

  /// Creates a new [WorkspaceModelVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceModelVersion]. {@macro pulumi_pai_workspace_model_version_workspace_model_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceModelVersion(
    String name, {
    WorkspaceModelVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/workspaceModelVersion:WorkspaceModelVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approvalStatus = registerOutput<String>('approvalStatus');
    extraInfo = registerOutput<Map<String, String>?>('extraInfo');
    formatType = registerOutput<String?>('formatType');
    frameworkType = registerOutput<String?>('frameworkType');
    inferenceSpec = registerOutput<Map<String, String>?>('inferenceSpec');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    metrics = registerOutput<Map<String, String>?>('metrics');
    modelId = registerOutput<String>('modelId');
    this.options = registerOutput<String?>('options');
    sourceId = registerOutput<String?>('sourceId');
    sourceType = registerOutput<String>('sourceType');
    trainingSpec = registerOutput<Map<String, String>?>('trainingSpec');
    uri = registerOutput<String>('uri');
    versionDescription = registerOutput<String?>('versionDescription');
    versionName = registerOutput<String>('versionName');
  }

  /// Gets an existing [WorkspaceModelVersion] resource's state with the given [name] and [id].
  static WorkspaceModelVersion get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceModelVersionState? state,
  }) {
    return WorkspaceModelVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceModelVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/workspaceModelVersion:WorkspaceModelVersion',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approvalStatus = registerOutput<String>('approvalStatus');
    extraInfo = registerOutput<Map<String, String>?>('extraInfo');
    formatType = registerOutput<String?>('formatType');
    frameworkType = registerOutput<String?>('frameworkType');
    inferenceSpec = registerOutput<Map<String, String>?>('inferenceSpec');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    metrics = registerOutput<Map<String, String>?>('metrics');
    modelId = registerOutput<String>('modelId');
    this.options = registerOutput<String?>('options');
    sourceId = registerOutput<String?>('sourceId');
    sourceType = registerOutput<String>('sourceType');
    trainingSpec = registerOutput<Map<String, String>?>('trainingSpec');
    uri = registerOutput<String>('uri');
    versionDescription = registerOutput<String?>('versionDescription');
    versionName = registerOutput<String>('versionName');
  }
}
