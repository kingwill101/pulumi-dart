import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folders_args.dart';
import 'get_folders_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the Data Works Folders of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.131.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.dataworks.Folder("default", {
///     projectId: "xxxx",
///     folderPath: "Business Flow/tfTestAcc/folderDi",
/// });
/// const ids = pulumi.all([_default.folderId, _default.projectId]).apply(([folderId, projectId]) => alicloud.dataworks.getFoldersOutput({
///     ids: [folderId],
///     projectId: projectId,
///     parentFolderPath: "Business Flow/tfTestAcc/folderDi",
/// }));
/// export const dataWorksFolderId1 = ids.apply(ids => ids.folders?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dataworks.Folder("default",
///     project_id="xxxx",
///     folder_path="Business Flow/tfTestAcc/folderDi")
/// ids = pulumi.Output.all(
///     folder_id=default.folder_id,
///     project_id=default.project_id
/// ).apply(lambda resolved_outputs: alicloud.dataworks.get_folders_output(ids=[resolved_outputs['folder_id']],
///     project_id=resolved_outputs['project_id'],
///     parent_folder_path="Business Flow/tfTestAcc/folderDi"))
///
/// pulumi.export("dataWorksFolderId1", ids.folders[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.DataWorks.Folder("default", new()
///     {
///         ProjectId = "xxxx",
///         FolderPath = "Business Flow/tfTestAcc/folderDi",
///     });
///
///     var ids = AliCloud.DataWorks.GetFolders.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.FolderId,
///         },
///         ProjectId = @default.ProjectId,
///         ParentFolderPath = "Business Flow/tfTestAcc/folderDi",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dataWorksFolderId1"] = ids.Apply(getFoldersResult => getFoldersResult.Folders[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := dataworks.NewFolder(ctx, "default", &dataworks.FolderArgs{
/// 			ProjectId:  pulumi.String("xxxx"),
/// 			FolderPath: pulumi.String("Business Flow/tfTestAcc/folderDi"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := pulumi.All(_default.FolderId, _default.ProjectId).ApplyT(func(_args []interface{}) (dataworks.GetFoldersResult, error) {
/// 			folderId := _args[0].(string)
/// 			projectId := _args[1].(*string)
/// 			return dataworks.GetFoldersResult(interface{}(dataworks.GetFolders(ctx, &dataworks.GetFoldersArgs{
/// 				Ids: []string{
/// 					folderId,
/// 				},
/// 				ProjectId:        projectId,
/// 				ParentFolderPath: "Business Flow/tfTestAcc/folderDi",
/// 			}, nil))), nil
/// 		}).(dataworks.GetFoldersResultOutput)
/// 		ctx.Export("dataWorksFolderId1", ids.ApplyT(func(ids dataworks.GetFoldersResult) (*string, error) {
/// 			return &ids.Folders[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.dataworks.Folder;
/// import com.pulumi.alicloud.dataworks.FolderArgs;
/// import com.pulumi.alicloud.dataworks.DataworksFunctions;
/// import com.pulumi.alicloud.dataworks.inputs.GetFoldersArgs;
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
///         var default_ = new Folder("default", FolderArgs.builder()
///             .projectId("xxxx")
///             .folderPath("Business Flow/tfTestAcc/folderDi")
///             .build());
///
///         final var ids = Output.tuple(default_.folderId(), default_.projectId()).applyValue(values -> {
///             var folderId = values.t1;
///             var projectId = values.t2;
///             return DataworksFunctions.getFolders(GetFoldersArgs.builder()
///                 .ids(folderId)
///                 .projectId(projectId)
///                 .parentFolderPath("Business Flow/tfTestAcc/folderDi")
///                 .build());
///         });
///
///         ctx.export("dataWorksFolderId1", ids.applyValue(_ids -> _ids.folders()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dataworks:Folder
///     properties:
///       projectId: xxxx
///       folderPath: Business Flow/tfTestAcc/folderDi
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dataworks:getFolders
///       arguments:
///         ids:
///           - ${default.folderId}
///         projectId: ${default.projectId}
///         parentFolderPath: Business Flow/tfTestAcc/folderDi
/// outputs:
///   dataWorksFolderId1: ${ids.folders[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataworks_get_folders_get_folders_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFoldersResult> getFolders(
  GetFoldersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dataworks/getFolders:getFolders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}

/// Using this data source can open DataWorks service automatically. If the service has been opened, it will return opened.
///
/// For information about DataWorks and how to use it, see [What is DataWorks](https://www.alibabacloud.com/help/en/product/72772.htm).
///
/// > **NOTE:** Available in v1.118.0+. After the version 1.141.0, the data source is renamed as `alicloud.dataworks.getService`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.dataworks.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.dataworks.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.DataWorks.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataworks.GetService(ctx, &dataworks.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.dataworks.DataworksFunctions;
/// import com.pulumi.alicloud.dataworks.inputs.GetServiceArgs;
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
///         final var open = DataworksFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:dataworks:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataworks_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dataworks/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
