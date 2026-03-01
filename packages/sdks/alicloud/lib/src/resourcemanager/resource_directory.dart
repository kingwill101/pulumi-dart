import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_directory_args.dart';
import 'resource_directory_state.dart';

/// Provides a Resource Manager Resource Directory resource.
///
///
///
/// For information about Resource Manager Resource Directory and how to use it, see [What is Resource Directory](https://www.alibabacloud.com/help/en/doc-detail/94475.htm).
///
/// > **NOTE:** Available since v1.84.0.
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
/// const _default = alicloud.resourcemanager.getResourceDirectories({});
/// const defaultResourceDirectory: alicloud.resourcemanager.ResourceDirectory[] = [];
/// _default.then(_default => _default.directories).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         defaultResourceDirectory.push(new alicloud.resourcemanager.ResourceDirectory(`default-${range.value}`, {status: "Enabled"}));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_directories()
/// default_resource_directory = []
/// def create_default(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         default_resource_directory.append(alicloud.resourcemanager.ResourceDirectory(f"default-{range['value']}", status="Enabled"))
///
/// len(default.directories).apply(lambda resolved_outputs: create_default(0 if resolved_outputs['length'] > 0 else 1))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceDirectories.Invoke();
///
///     var defaultResourceDirectory = new List<AliCloud.ResourceManager.ResourceDirectory>();
///     for (var rangeIndex = 0; rangeIndex < @default.Apply(@default => @default.Apply(getResourceDirectoriesResult => getResourceDirectoriesResult.Directories)).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultResourceDirectory.Add(new AliCloud.ResourceManager.ResourceDirectory($"default-{range.Value}", new()
///         {
///             Status = "Enabled",
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceDirectories(ctx, &resourcemanager.GetResourceDirectoriesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if length > 0 {
/// 			tmp0 = 0
/// 		} else {
/// 			tmp0 = 1
/// 		}
/// 		var defaultResourceDirectory []*resourcemanager.ResourceDirectory
/// 		for index := 0; index < float64(len(_default.Directories).ApplyT(func(length int) (float64, error) {
/// 			return tmp0, nil
/// 		}).(pulumi.Float64Output)); index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := resourcemanager.NewResourceDirectory(ctx, fmt.Sprintf("default-%v", key0), &resourcemanager.ResourceDirectoryArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultResourceDirectory = append(defaultResourceDirectory, __res)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceDirectoriesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourceDirectory;
/// import com.pulumi.alicloud.resourcemanager.ResourceDirectoryArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var default = ResourcemanagerFunctions.getResourceDirectories(GetResourceDirectoriesArgs.builder()
///             .build());
///
///         for (var i = 0; i < default_.directories().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new ResourceDirectory("defaultResourceDirectory-" + i, ResourceDirectoryArgs.builder()
///                 .status("Enabled")
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultResourceDirectory:
///     type: alicloud:resourcemanager:ResourceDirectory
///     name: default
///     properties:
///       status: Enabled
///     options: {}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceDirectories
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Resource Directory can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/resourceDirectory:ResourceDirectory example <id>
/// ```
class ResourceDirectory extends pulumi.CustomResource {
  /// The time when the resource directory was created
  late final pulumi.Output<String> createTime;
  /// The ID of the master account
  late final pulumi.Output<String> masterAccountId;
  /// The name of the master account
  late final pulumi.Output<String> masterAccountName;
  /// The status of the Member Display Name Synchronization feature. Valid values:
  /// - Enabled
  /// - Disabled
  late final pulumi.Output<String> memberAccountDisplayNameSyncStatus;
  /// The status of the member deletion feature. Valid values:
  /// - Enabled: The feature is enabled. You can call the DeleteAccount operation to delete members of the resource account type.
  /// - Disabled: The feature is disabled. You cannot delete members of the resource account type.
  late final pulumi.Output<String> memberDeletionStatus;
  /// The ID of the root folder
  late final pulumi.Output<String> rootFolderId;
  /// ScpStatus
  late final pulumi.Output<String> status;

  /// Creates a new [ResourceDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceDirectory]. {@macro pulumi_resourcemanager_resource_directory_resource_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceDirectory(
    String name, {
    ResourceDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/resourceDirectory:ResourceDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.masterAccountName = registerOutput<String>('masterAccountName');
    this.memberAccountDisplayNameSyncStatus = registerOutput<String>('memberAccountDisplayNameSyncStatus');
    this.memberDeletionStatus = registerOutput<String>('memberDeletionStatus');
    this.rootFolderId = registerOutput<String>('rootFolderId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [ResourceDirectory] resource's state with the given [name] and [id].
  static ResourceDirectory get(
    String name,
    pulumi.Input<String> id, {
    ResourceDirectoryState? state,
  }) {
    return ResourceDirectory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceDirectory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/resourceDirectory:ResourceDirectory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.masterAccountName = registerOutput<String>('masterAccountName');
    this.memberAccountDisplayNameSyncStatus = registerOutput<String>('memberAccountDisplayNameSyncStatus');
    this.memberDeletionStatus = registerOutput<String>('memberDeletionStatus');
    this.rootFolderId = registerOutput<String>('rootFolderId');
    this.status = registerOutput<String>('status');
  }
}
