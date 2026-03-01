import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_datasetversion_args.dart';
import 'workspace_datasetversion_label.dart';

/// Provides a PAI Workspace Datasetversion resource.
///
///
///
/// For information about PAI Workspace Dataset Version and how to use it, see [What is Dataset Version](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateDatasetVersion).
/// > **NOTE:** Available since v1.236.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultAiWorkspace = new alicloud.pai.WorkspaceWorkspace("defaultAiWorkspace", {
///     description: name,
///     displayName: name,
///     workspaceName: name,
///     envTypes: ["prod"],
/// });
/// const defaultDataset = new alicloud.pai.WorkspaceDataset("defaultDataset", {
///     accessibility: "PRIVATE",
///     sourceType: "USER",
///     dataType: "PIC",
///     workspaceId: defaultAiWorkspace.id,
///     options: JSON.stringify({
///         mountPath: "/mnt/data/",
///     }),
///     description: name,
///     sourceId: "d-xxxxx_v1",
///     uri: "oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///     datasetName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     userId: "1511928242963727",
///     dataSourceType: "OSS",
///     property: "DIRECTORY",
/// });
/// const _default = new alicloud.pai.WorkspaceDatasetversion("default", {
///     options: JSON.stringify({
///         mountPath: "/mnt/data/verion/",
///     }),
///     description: name,
///     dataSourceType: "OSS",
///     sourceType: "USER",
///     sourceId: "d-xxxxx_v1",
///     dataSize: 2068,
///     dataCount: 1000,
///     labels: [{
///         key: "key1",
///         value: "example1",
///     }],
///     uri: "oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///     property: "DIRECTORY",
///     datasetId: defaultDataset.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_ai_workspace = alicloud.pai.WorkspaceWorkspace("defaultAiWorkspace",
///     description=name,
///     display_name=name,
///     workspace_name=name,
///     env_types=["prod"])
/// default_dataset = alicloud.pai.WorkspaceDataset("defaultDataset",
///     accessibility="PRIVATE",
///     source_type="USER",
///     data_type="PIC",
///     workspace_id=default_ai_workspace.id,
///     options=json.dumps({
///         "mountPath": "/mnt/data/",
///     }),
///     description=name,
///     source_id="d-xxxxx_v1",
///     uri="oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///     dataset_name=std.format(input="%s1",
///         args=[name]).result,
///     user_id="1511928242963727",
///     data_source_type="OSS",
///     property="DIRECTORY")
/// default = alicloud.pai.WorkspaceDatasetversion("default",
///     options=json.dumps({
///         "mountPath": "/mnt/data/verion/",
///     }),
///     description=name,
///     data_source_type="OSS",
///     source_type="USER",
///     source_id="d-xxxxx_v1",
///     data_size=2068,
///     data_count=1000,
///     labels=[{
///         "key": "key1",
///         "value": "example1",
///     }],
///     uri="oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///     property="DIRECTORY",
///     dataset_id=default_dataset.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultAiWorkspace = new AliCloud.Pai.WorkspaceWorkspace("defaultAiWorkspace", new()
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
///     var defaultDataset = new AliCloud.Pai.WorkspaceDataset("defaultDataset", new()
///     {
///         Accessibility = "PRIVATE",
///         SourceType = "USER",
///         DataType = "PIC",
///         WorkspaceId = defaultAiWorkspace.Id,
///         Options = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["mountPath"] = "/mnt/data/",
///         }),
///         Description = name,
///         SourceId = "d-xxxxx_v1",
///         Uri = "oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///         DatasetName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         UserId = "1511928242963727",
///         DataSourceType = "OSS",
///         Property = "DIRECTORY",
///     });
///
///     var @default = new AliCloud.Pai.WorkspaceDatasetversion("default", new()
///     {
///         Options = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["mountPath"] = "/mnt/data/verion/",
///         }),
///         Description = name,
///         DataSourceType = "OSS",
///         SourceType = "USER",
///         SourceId = "d-xxxxx_v1",
///         DataSize = 2068,
///         DataCount = 1000,
///         Labels = new[]
///         {
///             new AliCloud.Pai.Inputs.WorkspaceDatasetversionLabelArgs
///             {
///                 Key = "key1",
///                 Value = "example1",
///             },
///         },
///         Uri = "oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/",
///         Property = "DIRECTORY",
///         DatasetId = defaultDataset.Id,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		defaultAiWorkspace, err := pai.NewWorkspaceWorkspace(ctx, "defaultAiWorkspace", &pai.WorkspaceWorkspaceArgs{
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDataset, err := pai.NewWorkspaceDataset(ctx, "defaultDataset", &pai.WorkspaceDatasetArgs{
/// 			Accessibility:  pulumi.String("PRIVATE"),
/// 			SourceType:     pulumi.String("USER"),
/// 			DataType:       pulumi.String("PIC"),
/// 			WorkspaceId:    defaultAiWorkspace.ID(),
/// 			Options:        pulumi.String(json0),
/// 			Description:    pulumi.String(name),
/// 			SourceId:       pulumi.String("d-xxxxx_v1"),
/// 			Uri:            pulumi.String("oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/"),
/// 			DatasetName:    pulumi.String(invokeFormat.Result),
/// 			UserId:         pulumi.String("1511928242963727"),
/// 			DataSourceType: pulumi.String("OSS"),
/// 			Property:       pulumi.String("DIRECTORY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"mountPath": "/mnt/data/verion/",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = pai.NewWorkspaceDatasetversion(ctx, "default", &pai.WorkspaceDatasetversionArgs{
/// 			Options:        pulumi.String(json1),
/// 			Description:    pulumi.String(name),
/// 			DataSourceType: pulumi.String("OSS"),
/// 			SourceType:     pulumi.String("USER"),
/// 			SourceId:       pulumi.String("d-xxxxx_v1"),
/// 			DataSize:       pulumi.Int(2068),
/// 			DataCount:      pulumi.Int(1000),
/// 			Labels: pai.WorkspaceDatasetversionLabelArray{
/// 				&pai.WorkspaceDatasetversionLabelArgs{
/// 					Key:   pulumi.String("key1"),
/// 					Value: pulumi.String("example1"),
/// 				},
/// 			},
/// 			Uri:       pulumi.String("oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/"),
/// 			Property:  pulumi.String("DIRECTORY"),
/// 			DatasetId: defaultDataset.ID(),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.pai.WorkspaceDatasetversion;
/// import com.pulumi.alicloud.pai.WorkspaceDatasetversionArgs;
/// import com.pulumi.alicloud.pai.inputs.WorkspaceDatasetversionLabelArgs;
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
///         var defaultAiWorkspace = new WorkspaceWorkspace("defaultAiWorkspace", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .displayName(name)
///             .workspaceName(name)
///             .envTypes("prod")
///             .build());
///
///         var defaultDataset = new WorkspaceDataset("defaultDataset", WorkspaceDatasetArgs.builder()
///             .accessibility("PRIVATE")
///             .sourceType("USER")
///             .dataType("PIC")
///             .workspaceId(defaultAiWorkspace.id())
///             .options(serializeJson(
///                 jsonObject(
///                     jsonProperty("mountPath", "/mnt/data/")
///                 )))
///             .description(name)
///             .sourceId("d-xxxxx_v1")
///             .uri("oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/")
///             .datasetName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .userId("1511928242963727")
///             .dataSourceType("OSS")
///             .property("DIRECTORY")
///             .build());
///
///         var default_ = new WorkspaceDatasetversion("default", WorkspaceDatasetversionArgs.builder()
///             .options(serializeJson(
///                 jsonObject(
///                     jsonProperty("mountPath", "/mnt/data/verion/")
///                 )))
///             .description(name)
///             .dataSourceType("OSS")
///             .sourceType("USER")
///             .sourceId("d-xxxxx_v1")
///             .dataSize(2068)
///             .dataCount(1000)
///             .labels(WorkspaceDatasetversionLabelArgs.builder()
///                 .key("key1")
///                 .value("example1")
///                 .build())
///             .uri("oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/")
///             .property("DIRECTORY")
///             .datasetId(defaultDataset.id())
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
///   defaultAiWorkspace:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       displayName: ${name}
///       workspaceName: ${name}
///       envTypes:
///         - prod
///   defaultDataset:
///     type: alicloud:pai:WorkspaceDataset
///     properties:
///       accessibility: PRIVATE
///       sourceType: USER
///       dataType: PIC
///       workspaceId: ${defaultAiWorkspace.id}
///       options:
///         fn::toJSON:
///           mountPath: /mnt/data/
///       description: ${name}
///       sourceId: d-xxxxx_v1
///       uri: oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/
///       datasetName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       userId: '1511928242963727'
///       dataSourceType: OSS
///       property: DIRECTORY
///   default:
///     type: alicloud:pai:WorkspaceDatasetversion
///     properties:
///       options:
///         fn::toJSON:
///           mountPath: /mnt/data/verion/
///       description: ${name}
///       dataSourceType: OSS
///       sourceType: USER
///       sourceId: d-xxxxx_v1
///       dataSize: '2068'
///       dataCount: '1000'
///       labels:
///         - key: key1
///           value: example1
///       uri: oss://ai4d-q9lgxlpwxzqluij66y.oss-cn-hangzhou.aliyuncs.com/
///       property: DIRECTORY
///       datasetId: ${defaultDataset.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Datasetversion can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceDatasetversion:WorkspaceDatasetversion example <dataset_id>:<version_name>
/// ```
class WorkspaceDatasetversion extends pulumi.CustomResource {
  /// Update time.
  late final pulumi.Output<String> createTime;
  /// Data count.
  late final pulumi.Output<int?> dataCount;
  /// Data size.
  late final pulumi.Output<int?> dataSize;
  /// The data source type. The following values are supported:
  /// - OSS: Alibaba Cloud Object Storage (OSS).
  /// - NAS: Alibaba cloud file storage (NAS).
  late final pulumi.Output<String> dataSourceType;
  /// The first ID of the resource
  late final pulumi.Output<String> datasetId;
  /// Description of dataset version.
  late final pulumi.Output<String?> description;
  /// The tag of the resource See `labels` below.
  late final pulumi.Output<List<WorkspaceDatasetversionLabel>?> labels;
  /// The extended field, which is of the JsonString type.
  ///
  /// When DLC uses a dataset, you can specify the default Mount path for the dataset by configuring the mountPath field.
  late final pulumi.Output<String?> options;
  /// The properties of the dataset. The following values are supported:
  /// - FILE: FILE.
  /// - DIRECTORY: folder.
  late final pulumi.Output<String> property;
  /// The data source ID.
  late final pulumi.Output<String?> sourceId;
  /// The data source type. The default value is USER.
  late final pulumi.Output<String?> sourceType;
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
  /// The name of the resource
  late final pulumi.Output<String> versionName;

  /// Creates a new [WorkspaceDatasetversion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceDatasetversion]. {@macro pulumi_pai_workspace_datasetversion_workspace_datasetversion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceDatasetversion(
    String name, {
    WorkspaceDatasetversionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceDatasetversion:WorkspaceDatasetversion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataCount = registerOutput<int?>('dataCount');
    this.dataSize = registerOutput<int?>('dataSize');
    this.dataSourceType = registerOutput<String>('dataSourceType');
    this.datasetId = registerOutput<String>('datasetId');
    this.description = registerOutput<String?>('description');
    this.labels = registerOutput<List<WorkspaceDatasetversionLabel>?>('labels');
    this.options = registerOutput<String?>('options');
    this.property = registerOutput<String>('property');
    this.sourceId = registerOutput<String?>('sourceId');
    this.sourceType = registerOutput<String?>('sourceType');
    this.uri = registerOutput<String>('uri');
    this.versionName = registerOutput<String>('versionName');
  }
}
