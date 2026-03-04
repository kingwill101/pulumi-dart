import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_args.dart';
import 'folder_state.dart';

/// Provides a Resource Manager Folder resource.
///
/// The management unit of the organization account in the resource directory.
///
/// For information about Resource Manager Folder and how to use it, see [What is Folder](https://www.alibabacloud.com/help/en/resource-management/resource-directory/developer-reference/api-resourcedirectorymaster-2022-04-19-createfolder).
///
/// &gt; **NOTE:** Available since v1.82.0.
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
/// const example = new alicloud.resourcemanager.Folder("example", {folderName: `${name}-${_default.result}`});
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
/// example = alicloud.resourcemanager.Folder("example", folder_name=f"{name}-{default['result']}")
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
///     var example = new AliCloud.ResourceManager.Folder("example", new()
///     {
///         FolderName = $"{name}-{@default.Result}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err = resourcemanager.NewFolder(ctx, "example", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.resourcemanager.Folder;
/// import com.pulumi.alicloud.resourcemanager.FolderArgs;
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
///         var example = new Folder("example", FolderArgs.builder()
///             .folderName(String.format("%s-%s", name,default_.result()))
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
///   example:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Folder can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/folder:Folder example <id>
/// ```
class Folder extends pulumi.CustomResource {
  /// (Available since v1.259.0) The time when the folder was created.
  late final pulumi.Output<String> createTime;

  /// The name of the folder.
  late final pulumi.Output<String> folderName;

  /// The ID of the parent folder.
  late final pulumi.Output<String> parentFolderId;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Folder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Folder]. {@macro pulumi_resourcemanager_folder_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Folder(String name, {FolderArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:resourcemanager/folder:Folder',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    folderName = registerOutput<String>('folderName');
    parentFolderId = registerOutput<String>('parentFolderId');
    tags = registerOutput<Map<String, String>?>('tags');
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
         'alicloud:resourcemanager/folder:Folder',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    folderName = registerOutput<String>('folderName');
    parentFolderId = registerOutput<String>('parentFolderId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
