import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_model_args.dart';
import 'workspace_model_state.dart';

/// Provides a PAI Workspace Model resource.
///
///
///
/// For information about PAI Workspace Model and how to use it, see [What is Model](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmodel).
///
/// &gt; **NOTE:** Available since v1.249.0.
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
/// const defaultENuC6u = new alicloud.pai.WorkspaceWorkspace("defaultENuC6u", {
///     description: "156",
///     displayName: name,
///     workspaceName: `${name}_${_default.result}`,
///     envTypes: ["prod"],
/// });
/// const defaultWorkspaceModel = new alicloud.pai.WorkspaceModel("default", {
///     origin: "Civitai",
///     task: "text-to-image-synthesis",
///     modelName: name,
///     accessibility: "PRIVATE",
///     workspaceId: defaultENuC6u.id,
///     modelType: "Checkpoint",
///     labels: [{
///         key: "base_model",
///         value: "SD 1.5",
///     }],
///     orderNumber: 1,
///     extraInfo: {
///         test: "15",
///     },
///     modelDescription: "ModelDescription.",
///     modelDoc: "https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///     domain: "aigc",
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
/// default_e_nu_c6u = alicloud.pai.WorkspaceWorkspace("defaultENuC6u",
///     description="156",
///     display_name=name,
///     workspace_name=f"{name}_{default['result']}",
///     env_types=["prod"])
/// default_workspace_model = alicloud.pai.WorkspaceModel("default",
///     origin="Civitai",
///     task="text-to-image-synthesis",
///     model_name=name,
///     accessibility="PRIVATE",
///     workspace_id=default_e_nu_c6u.id,
///     model_type="Checkpoint",
///     labels=[{
///         "key": "base_model",
///         "value": "SD 1.5",
///     }],
///     order_number=1,
///     extra_info={
///         "test": "15",
///     },
///     model_description="ModelDescription.",
///     model_doc="https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///     domain="aigc")
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
///     var defaultENuC6u = new AliCloud.Pai.WorkspaceWorkspace("defaultENuC6u", new()
///     {
///         Description = "156",
///         DisplayName = name,
///         WorkspaceName = $"{name}_{@default.Result}",
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var defaultWorkspaceModel = new AliCloud.Pai.WorkspaceModel("default", new()
///     {
///         Origin = "Civitai",
///         Task = "text-to-image-synthesis",
///         ModelName = name,
///         Accessibility = "PRIVATE",
///         WorkspaceId = defaultENuC6u.Id,
///         ModelType = "Checkpoint",
///         Labels = new[]
///         {
///             new AliCloud.Pai.Inputs.WorkspaceModelLabelArgs
///             {
///                 Key = "base_model",
///                 Value = "SD 1.5",
///             },
///         },
///         OrderNumber = 1,
///         ExtraInfo =
///         {
///             { "test", "15" },
///         },
///         ModelDescription = "ModelDescription.",
///         ModelDoc = "https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors",
///         Domain = "aigc",
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
/// 		defaultENuC6u, err := pai.NewWorkspaceWorkspace(ctx, "defaultENuC6u", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String("156"),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewWorkspaceModel(ctx, "default", &pai.WorkspaceModelArgs{
/// 			Origin:        pulumi.String("Civitai"),
/// 			Task:          pulumi.String("text-to-image-synthesis"),
/// 			ModelName:     pulumi.String(name),
/// 			Accessibility: pulumi.String("PRIVATE"),
/// 			WorkspaceId:   defaultENuC6u.ID(),
/// 			ModelType:     pulumi.String("Checkpoint"),
/// 			Labels: pai.WorkspaceModelLabelArray{
/// 				&pai.WorkspaceModelLabelArgs{
/// 					Key:   pulumi.String("base_model"),
/// 					Value: pulumi.String("SD 1.5"),
/// 				},
/// 			},
/// 			OrderNumber: pulumi.Int(1),
/// 			ExtraInfo: pulumi.StringMap{
/// 				"test": pulumi.String("15"),
/// 			},
/// 			ModelDescription: pulumi.String("ModelDescription."),
/// 			ModelDoc:         pulumi.String("https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors"),
/// 			Domain:           pulumi.String("aigc"),
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
///         var defaultENuC6u = new WorkspaceWorkspace("defaultENuC6u", WorkspaceWorkspaceArgs.builder()
///             .description("156")
///             .displayName(name)
///             .workspaceName(String.format("%s_%s", name,default_.result()))
///             .envTypes("prod")
///             .build());
///
///         var defaultWorkspaceModel = new WorkspaceModel("defaultWorkspaceModel", WorkspaceModelArgs.builder()
///             .origin("Civitai")
///             .task("text-to-image-synthesis")
///             .modelName(name)
///             .accessibility("PRIVATE")
///             .workspaceId(defaultENuC6u.id())
///             .modelType("Checkpoint")
///             .labels(WorkspaceModelLabelArgs.builder()
///                 .key("base_model")
///                 .value("SD 1.5")
///                 .build())
///             .orderNumber(1)
///             .extraInfo(Map.of("test", "15"))
///             .modelDescription("ModelDescription.")
///             .modelDoc("https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors")
///             .domain("aigc")
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
///   defaultENuC6u:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: '156'
///       displayName: ${name}
///       workspaceName: ${name}_${default.result}
///       envTypes:
///         - prod
///   defaultWorkspaceModel:
///     type: alicloud:pai:WorkspaceModel
///     name: default
///     properties:
///       origin: Civitai
///       task: text-to-image-synthesis
///       modelName: ${name}
///       accessibility: PRIVATE
///       workspaceId: ${defaultENuC6u.id}
///       modelType: Checkpoint
///       labels:
///         - key: base_model
///           value: SD 1.5
///       orderNumber: '1'
///       extraInfo:
///         test: '15'
///       modelDescription: ModelDescription.
///       modelDoc: https://eas-***.oss-cn-hangzhou.aliyuncs.com/s**.safetensors
///       domain: aigc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Model can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceModel:WorkspaceModel example <id>
/// ```
class WorkspaceModel extends pulumi.CustomResource {
  /// The visibility of the model in the workspace. Default value: `PRIVATE`. Valid values:
  /// - `PRIVATE`: In this workspace, it is only visible to you and the administrator.
  /// - `PUBLIC`: In this workspace, it is visible to everyone.
  late final pulumi.Output<String> accessibility;
  /// The domain of the model. Describe the domain in which the model solves the problem. For example: nlp (natural language processing), cv (computer vision), etc.
  late final pulumi.Output<String?> domain;
  /// Other information about the model.
  late final pulumi.Output<Map<String, String>?> extraInfo;
  /// A list of tags. See `labels` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;
  /// The model description, used to distinguish different models.
  late final pulumi.Output<String?> modelDescription;
  /// The documentation of the model.
  late final pulumi.Output<String?> modelDoc;
  /// The name of the model. The name must be 1 to 127 characters in length.
  late final pulumi.Output<String> modelName;
  /// The model type. Example: Checkpoint or LoRA.
  late final pulumi.Output<String?> modelType;
  /// The sequence number of the model. Can be used for custom sorting.
  late final pulumi.Output<int?> orderNumber;
  /// The source of the model. The community or organization to which the source model belongs, such as ModelScope or HuggingFace.
  late final pulumi.Output<String?> origin;
  /// The task of the model. Describes the specific problem that the model solves. Example: text-classification.
  late final pulumi.Output<String?> task;
  /// The ID of the workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceModel]. {@macro pulumi_pai_workspace_model_workspace_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceModel(
    String name, {
    WorkspaceModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceModel:WorkspaceModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    domain = registerOutput<String?>('domain');
    extraInfo = registerOutput<Map<String, String>?>('extraInfo');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    modelDescription = registerOutput<String?>('modelDescription');
    modelDoc = registerOutput<String?>('modelDoc');
    modelName = registerOutput<String>('modelName');
    modelType = registerOutput<String?>('modelType');
    orderNumber = registerOutput<int?>('orderNumber');
    origin = registerOutput<String?>('origin');
    task = registerOutput<String?>('task');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceModel] resource's state with the given [name] and [id].
  static WorkspaceModel get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceModelState? state,
  }) {
    return WorkspaceModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceModel:WorkspaceModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    domain = registerOutput<String?>('domain');
    extraInfo = registerOutput<Map<String, String>?>('extraInfo');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    modelDescription = registerOutput<String?>('modelDescription');
    modelDoc = registerOutput<String?>('modelDoc');
    modelName = registerOutput<String>('modelName');
    modelType = registerOutput<String?>('modelType');
    orderNumber = registerOutput<int?>('orderNumber');
    origin = registerOutput<String?>('origin');
    task = registerOutput<String?>('task');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
