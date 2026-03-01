import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_args.dart';
import 'folder_state.dart';

/// Provides a Data Works Folder resource.
///
/// For information about Data Works Folder and how to use it, see [What is Folder](https://help.aliyun.com/document_detail/173940.html).
///
/// > **NOTE:** Available in v1.131.0+.
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
/// const example = new alicloud.dataworks.Folder("example", {
///     projectId: "320687",
///     folderPath: "Business Flow/tfTestAcc/folderDi/tftest1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dataworks.Folder("example",
///     project_id="320687",
///     folder_path="Business Flow/tfTestAcc/folderDi/tftest1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.DataWorks.Folder("example", new()
///     {
///         ProjectId = "320687",
///         FolderPath = "Business Flow/tfTestAcc/folderDi/tftest1",
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
/// 		_, err := dataworks.NewFolder(ctx, "example", &dataworks.FolderArgs{
/// 			ProjectId:  pulumi.String("320687"),
/// 			FolderPath: pulumi.String("Business Flow/tfTestAcc/folderDi/tftest1"),
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
/// import com.pulumi.alicloud.dataworks.Folder;
/// import com.pulumi.alicloud.dataworks.FolderArgs;
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
///         var example = new Folder("example", FolderArgs.builder()
///             .projectId("320687")
///             .folderPath("Business Flow/tfTestAcc/folderDi/tftest1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:dataworks:Folder
///     properties:
///       projectId: '320687'
///       folderPath: Business Flow/tfTestAcc/folderDi/tftest1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Folder can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/folder:Folder example <folder_id>:<$.ProjectId>
/// ```
class Folder extends pulumi.CustomResource {
  late final pulumi.Output<String> folderId;
  /// Folder Path. The folder path composed with for part: `Business Flow/{Business Flow Name}/[folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined]/{Directory Name}`. The first segment of path must be `Business Flow`, and sencond segment of path must be a Business Flow Name within the project. The third part of path must be one of those keywords:`folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined`. Then the finial part of folder path can be specified in yourself.
  late final pulumi.Output<String> folderPath;
  /// The ID of the project.
  late final pulumi.Output<String?> projectId;
  late final pulumi.Output<String?> projectIdentifier;

  /// Creates a new [Folder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Folder]. {@macro pulumi_dataworks_folder_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Folder(
    String name, {
    FolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/folder:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.folderId = registerOutput<String>('folderId');
    this.folderPath = registerOutput<String>('folderPath');
    this.projectId = registerOutput<String?>('projectId');
    this.projectIdentifier = registerOutput<String?>('projectIdentifier');
  }

  /// Gets an existing [Folder] resource's state with the given [name] and [id].
  static Folder get(
    String name,
    pulumi.Input<String> id, {
    FolderState? state,
  }) {
    return Folder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Folder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/folder:Folder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.folderId = registerOutput<String>('folderId');
    this.folderPath = registerOutput<String>('folderPath');
    this.projectId = registerOutput<String?>('projectId');
    this.projectIdentifier = registerOutput<String?>('projectIdentifier');
  }
}
