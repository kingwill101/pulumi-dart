import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_args.dart';
import 'lifecycle_policy_state.dart';

/// Provides a File Storage (NAS) Lifecycle Policy resource.
///
/// For information about File Storage (NAS) Lifecycle Policy and how to use it, see [What is Lifecycle Policy](https://www.alibabacloud.com/help/en/doc-detail/169362.html).
///
/// &gt; **NOTE:** Available in v1.153.0+.
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
/// const example = new alicloud.nas.FileSystem("example", {
///     protocolType: "NFS",
///     storageType: "Capacity",
/// });
/// const exampleLifecyclePolicy = new alicloud.nas.LifecyclePolicy("example", {
///     fileSystemId: example.id,
///     lifecyclePolicyName: "terraform-example",
///     lifecycleRuleName: "DEFAULT_ATIME_14",
///     storageType: "InfrequentAccess",
///     paths: ["/"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.FileSystem("example",
///     protocol_type="NFS",
///     storage_type="Capacity")
/// example_lifecycle_policy = alicloud.nas.LifecyclePolicy("example",
///     file_system_id=example.id,
///     lifecycle_policy_name="terraform-example",
///     lifecycle_rule_name="DEFAULT_ATIME_14",
///     storage_type="InfrequentAccess",
///     paths=["/"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "NFS",
///         StorageType = "Capacity",
///     });
///
///     var exampleLifecyclePolicy = new AliCloud.Nas.LifecyclePolicy("example", new()
///     {
///         FileSystemId = example.Id,
///         LifecyclePolicyName = "terraform-example",
///         LifecycleRuleName = "DEFAULT_ATIME_14",
///         StorageType = "InfrequentAccess",
///         Paths = new[]
///         {
///             "/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType: pulumi.String("NFS"),
/// 			StorageType:  pulumi.String("Capacity"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewLifecyclePolicy(ctx, "example", &nas.LifecyclePolicyArgs{
/// 			FileSystemId:        example.ID(),
/// 			LifecyclePolicyName: pulumi.String("terraform-example"),
/// 			LifecycleRuleName:   pulumi.String("DEFAULT_ATIME_14"),
/// 			StorageType:         pulumi.String("InfrequentAccess"),
/// 			Paths: pulumi.StringArray{
/// 				pulumi.String("/"),
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
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.LifecyclePolicy;
/// import com.pulumi.alicloud.nas.LifecyclePolicyArgs;
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
///         var example = new FileSystem("example", FileSystemArgs.builder()
///             .protocolType("NFS")
///             .storageType("Capacity")
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .fileSystemId(example.id())
///             .lifecyclePolicyName("terraform-example")
///             .lifecycleRuleName("DEFAULT_ATIME_14")
///             .storageType("InfrequentAccess")
///             .paths("/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:nas:FileSystem
///     properties:
///       protocolType: NFS
///       storageType: Capacity
///   exampleLifecyclePolicy:
///     type: alicloud:nas:LifecyclePolicy
///     name: example
///     properties:
///       fileSystemId: ${example.id}
///       lifecyclePolicyName: terraform-example
///       lifecycleRuleName: DEFAULT_ATIME_14
///       storageType: InfrequentAccess
///       paths:
///         - /
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Lifecycle Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/lifecyclePolicy:LifecyclePolicy example <file_system_id>:<lifecycle_policy_name>
/// ```
class LifecyclePolicy extends pulumi.CustomResource {
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;

  /// The name of the lifecycle management policy.
  late final pulumi.Output<String> lifecyclePolicyName;

  /// The rules in the lifecycle management policy. Valid values: `DEFAULT_ATIME_14`, `DEFAULT_ATIME_30`, `DEFAULT_ATIME_60`, `DEFAULT_ATIME_90`.
  late final pulumi.Output<String> lifecycleRuleName;

  /// The absolute path of the directory for which the lifecycle management policy is configured. Set a maximum of `10` path. The path value must be prefixed by a forward slash (/) and must be an existing path in the mount target.
  late final pulumi.Output<List<String>> paths;

  /// The storage type of the data that is dumped to the IA storage medium. Valid values: `InfrequentAccess`.
  late final pulumi.Output<String> storageType;

  /// Creates a new [LifecyclePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecyclePolicy]. {@macro pulumi_nas_lifecycle_policy_lifecycle_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecyclePolicy(
    String name, {
    LifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/lifecyclePolicy:LifecyclePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fileSystemId = registerOutput<String>('fileSystemId');
    lifecyclePolicyName = registerOutput<String>('lifecyclePolicyName');
    lifecycleRuleName = registerOutput<String>('lifecycleRuleName');
    paths = registerOutput<List<String>>('paths');
    storageType = registerOutput<String>('storageType');
  }

  /// Gets an existing [LifecyclePolicy] resource's state with the given [name] and [id].
  static LifecyclePolicy get(
    String name,
    pulumi.Input<String> id, {
    LifecyclePolicyState? state,
  }) {
    return LifecyclePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LifecyclePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/lifecyclePolicy:LifecyclePolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fileSystemId = registerOutput<String>('fileSystemId');
    lifecyclePolicyName = registerOutput<String>('lifecyclePolicyName');
    lifecycleRuleName = registerOutput<String>('lifecycleRuleName');
    paths = registerOutput<List<String>>('paths');
    storageType = registerOutput<String>('storageType');
  }
}
