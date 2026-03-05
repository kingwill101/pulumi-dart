import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_dataset_args.dart';
import 'workspace_dataset_state.dart';

/// Provides a PAI Workspace Dataset resource.
///
///
///
/// For information about PAI Workspace Dataset and how to use it, see [What is Dataset](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateDataset).
///
/// &gt; **NOTE:** Available since v1.236.0.
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
/// const name = config.get("name") || "terraform_example";
/// const defaultWorkspace = new alicloud.pai.WorkspaceWorkspace("defaultWorkspace", {
///     description: name,
///     displayName: name,
///     workspaceName: name,
///     envTypes: ["prod"],
/// });
/// const _default = new alicloud.pai.WorkspaceDataset("default", {
///     options: JSON.stringify({
///         mountPath: "/mnt/data/",
///     }),
///     description: name,
///     accessibility: "PRIVATE",
///     datasetName: name,
///     dataSourceType: "NAS",
///     sourceType: "ITAG",
///     workspaceId: defaultWorkspace.id,
///     dataType: "PIC",
///     property: "DIRECTORY",
///     uri: "nas://086b649545.cn-hangzhou/",
///     sourceId: "d-xxxxx_v1",
///     userId: "1511928242963727",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_workspace = alicloud.pai.WorkspaceWorkspace("defaultWorkspace",
///     description=name,
///     display_name=name,
///     workspace_name=name,
///     env_types=["prod"])
/// default = alicloud.pai.WorkspaceDataset("default",
///     options=json.dumps({
///         "mountPath": "/mnt/data/",
///     }),
///     description=name,
///     accessibility="PRIVATE",
///     dataset_name=name,
///     data_source_type="NAS",
///     source_type="ITAG",
///     workspace_id=default_workspace.id,
///     data_type="PIC",
///     property="DIRECTORY",
///     uri="nas://086b649545.cn-hangzhou/",
///     source_id="d-xxxxx_v1",
///     user_id="1511928242963727")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultWorkspace = new AliCloud.Pai.WorkspaceWorkspace("defaultWorkspace", new()
///     {
///         Description = name,
///         DisplayName = name,
///         WorkspaceName = name,
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var @default = new AliCloud.Pai.WorkspaceDataset("default", new()
///     {
///         Options = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["mountPath"] = "/mnt/data/",
///         }),
///         Description = name,
///         Accessibility = "PRIVATE",
///         DatasetName = name,
///         DataSourceType = "NAS",
///         SourceType = "ITAG",
///         WorkspaceId = defaultWorkspace.Id,
///         DataType = "PIC",
///         Property = "DIRECTORY",
///         Uri = "nas://086b649545.cn-hangzhou/",
///         SourceId = "d-xxxxx_v1",
///         UserId = "1511928242963727",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
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
/// 		defaultWorkspace, err := pai.NewWorkspaceWorkspace(ctx, "defaultWorkspace", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String(name),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.String(name),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"mountPath": "/mnt/data/",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = pai.NewWorkspaceDataset(ctx, "default", &pai.WorkspaceDatasetArgs{
/// 			Options:        pulumi.String(json0),
/// 			Description:    pulumi.String(name),
/// 			Accessibility:  pulumi.String("PRIVATE"),
/// 			DatasetName:    pulumi.String(name),
/// 			DataSourceType: pulumi.String("NAS"),
/// 			SourceType:     pulumi.String("ITAG"),
/// 			WorkspaceId:    defaultWorkspace.ID(),
/// 			DataType:       pulumi.String("PIC"),
/// 			Property:       pulumi.String("DIRECTORY"),
/// 			Uri:            pulumi.String("nas://086b649545.cn-hangzhou/"),
/// 			SourceId:       pulumi.String("d-xxxxx_v1"),
/// 			UserId:         pulumi.String("1511928242963727"),
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
/// import com.pulumi.alicloud.pai.WorkspaceWorkspace;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspaceArgs;
/// import com.pulumi.alicloud.pai.WorkspaceDataset;
/// import com.pulumi.alicloud.pai.WorkspaceDatasetArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var defaultWorkspace = new WorkspaceWorkspace("defaultWorkspace", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .displayName(name)
///             .workspaceName(name)
///             .envTypes("prod")
///             .build());
///
///         var default_ = new WorkspaceDataset("default", WorkspaceDatasetArgs.builder()
///             .options(serializeJson(
///                 jsonObject(
///                     jsonProperty("mountPath", "/mnt/data/")
///                 )))
///             .description(name)
///             .accessibility("PRIVATE")
///             .datasetName(name)
///             .dataSourceType("NAS")
///             .sourceType("ITAG")
///             .workspaceId(defaultWorkspace.id())
///             .dataType("PIC")
///             .property("DIRECTORY")
///             .uri("nas://086b649545.cn-hangzhou/")
///             .sourceId("d-xxxxx_v1")
///             .userId("1511928242963727")
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
///   defaultWorkspace:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       displayName: ${name}
///       workspaceName: ${name}
///       envTypes:
///         - prod
///   default:
///     type: alicloud:pai:WorkspaceDataset
///     properties:
///       options:
///         fn::toJSON:
///           mountPath: /mnt/data/
///       description: ${name}
///       accessibility: PRIVATE
///       datasetName: ${name}
///       dataSourceType: NAS
///       sourceType: ITAG
///       workspaceId: ${defaultWorkspace.id}
///       dataType: PIC
///       property: DIRECTORY
///       uri: nas://086b649545.cn-hangzhou/
///       sourceId: d-xxxxx_v1
///       userId: '1511928242963727'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Dataset can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceDataset:WorkspaceDataset example <id>
/// ```
class WorkspaceDataset extends pulumi.CustomResource {
  /// Workspace visibility. The following values are supported:
  /// - PRIVATE (default): indicates that the workspace is visible to itself and the administrator.
  /// - PUBLIC: The workspace is visible to all users.
  late final pulumi.Output<String> accessibility;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The data source type. The following values are supported:
  /// - OSS: Alibaba Cloud Object Storage (OSS).
  /// - NAS: Alibaba cloud file storage (NAS).
  late final pulumi.Output<String> dataSourceType;
  /// The dataset type. The default value is COMMON. The following values are supported:
  /// - COMMON: COMMON.
  /// - PIC: picture.
  /// - TEXT: TEXT.
  /// - VIDEO: VIDEO.
  /// - AUDIO: AUDIO.
  late final pulumi.Output<String> dataType;
  /// The name of the dataset. The naming rules are as follows:
  /// - Start with a lowercase letter, uppercase letter, number, or Chinese.
  /// - Can contain an underscore (_) or a dash (-).
  /// - 1~127 characters in length.
  late final pulumi.Output<String> datasetName;
  /// Custom descriptions of datasets to distinguish between different datasets.
  late final pulumi.Output<String?> description;
  /// Labels added to the dataset See `labels` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;
  /// The extended field, which is of the JsonString type.
  ///
  /// When DLC uses a dataset, you can specify the default Mount path for the dataset by configuring the mountPath field.
  late final pulumi.Output<String?> options;
  /// The properties of the dataset. The following values are supported:
  /// - FILE: FILE.
  /// - DIRECTORY: folder.
  late final pulumi.Output<String> property;
  /// The data source ID.
  /// - When the SourceType is USER, SourceId can be customized.
  /// - When SourceType is ITAG, that is, when the iTAG module labels the data set generated by the result, SourceId is the task ID of ITAG.
  /// - When SourceType is PAI_PUBLIC_DATASET, that is, a dataset created using PAI public datasets, SourceId is empty by default.
  late final pulumi.Output<String?> sourceId;
  /// The data source type. The default value is USER. The following values are supported:
  /// - PAI-PUBLIC-DATASET:PAI public dataset.
  /// - ITAG: The dataset generated by the iTAG module annotation result.
  /// - USER: The data set registered by the USER.
  late final pulumi.Output<String> sourceType;
  /// The Uri configuration sample is as follows:
  /// - The data source type is OSS:'oss:// bucket.endpoint/object'
  /// - The data source type is NAS:
  ///
  /// The general NAS format is: 'nas://.region/subpath/to/dir/';
  ///
  /// CPFS1.0:'nas://.region/subpath/to/dir /';
  ///
  /// CPFS2.0:'nas://.region//'.
  ///
  /// CPFS1.0 and CPFS2.0 are distinguished by the format of fsid: CPFS1.0 is cpfs-;CPFS2.0 is cpfs-.
  late final pulumi.Output<String> uri;
  /// The ID of the dataset owner.
  late final pulumi.Output<String> userId;
  /// The ID of the workspace where the dataset is located. For details about how to obtain the workspace ID, see ListWorkspaces.
  ///
  /// If this parameter is not configured, the default workspace is used. If the default workspace does not exist, an error is reported.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceDataset]. {@macro pulumi_pai_workspace_dataset_workspace_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceDataset(
    String name, {
    WorkspaceDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceDataset:WorkspaceDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    createTime = registerOutput<String>('createTime');
    dataSourceType = registerOutput<String>('dataSourceType');
    dataType = registerOutput<String>('dataType');
    datasetName = registerOutput<String>('datasetName');
    description = registerOutput<String?>('description');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.options = registerOutput<String?>('options');
    property = registerOutput<String>('property');
    sourceId = registerOutput<String?>('sourceId');
    sourceType = registerOutput<String>('sourceType');
    uri = registerOutput<String>('uri');
    userId = registerOutput<String>('userId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceDataset] resource's state with the given [name] and [id].
  static WorkspaceDataset get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceDatasetState? state,
  }) {
    return WorkspaceDataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceDataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceDataset:WorkspaceDataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    createTime = registerOutput<String>('createTime');
    dataSourceType = registerOutput<String>('dataSourceType');
    dataType = registerOutput<String>('dataType');
    datasetName = registerOutput<String>('datasetName');
    description = registerOutput<String?>('description');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    this.options = registerOutput<String?>('options');
    property = registerOutput<String>('property');
    sourceId = registerOutput<String?>('sourceId');
    sourceType = registerOutput<String>('sourceType');
    uri = registerOutput<String>('uri');
    userId = registerOutput<String>('userId');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
