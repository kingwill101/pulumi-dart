import 'package:pulumi/pulumi.dart' as pulumi;
import 'lock_args.dart';

/// > **Early Access** Locks are in Early Access and may not be available to all users.
///
/// > **Important** Only unrestricted users can create and delete locks. Restricted users cannot manage locks even if they have read/write permissions for the resource.
///
/// Manages a Linode Lock which prevents accidental deletion and modification of resources. Locks protect against deletion, rebuild operations, and service transfers. The `cannot_delete_with_subresources` lock type also protects subresources such as disks, configs, interfaces, and IP addresses.
///
/// For more information, see the Linode APIv4 docs (TBD).
///
/// > **Note** Only one lock can exist per resource at a time. You cannot have both `cannot_delete` and `cannot_delete_with_subresources` locks on the same resource simultaneously.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_inst = new linode.Instance("my-inst", {
///     label: "my-inst",
///     region: "us-east",
///     type: "g6-nanode-1",
/// });
/// const my_lock = new linode.Lock("my-lock", {
///     entityId: my_inst.id,
///     entityType: "linode",
///     lockType: "cannot_delete",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_inst = linode.Instance("my-inst",
///     label="my-inst",
///     region="us-east",
///     type="g6-nanode-1")
/// my_lock = linode.Lock("my-lock",
///     entity_id=my_inst.id,
///     entity_type="linode",
///     lock_type="cannot_delete")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_inst = new Linode.Instance("my-inst", new()
///     {
///         Label = "my-inst",
///         Region = "us-east",
///         Type = "g6-nanode-1",
///     });
///
///     var my_lock = new Linode.Lock("my-lock", new()
///     {
///         EntityId = my_inst.Id,
///         EntityType = "linode",
///         LockType = "cannot_delete",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_inst, err := linode.NewInstance(ctx, "my-inst", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-inst"),
/// 			Region: pulumi.String("us-east"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewLock(ctx, "my-lock", &linode.LockArgs{
/// 			EntityId:   my_inst.ID(),
/// 			EntityType: pulumi.String("linode"),
/// 			LockType:   pulumi.String("cannot_delete"),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Lock;
/// import com.pulumi.linode.LockArgs;
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
///         var my_inst = new Instance("my-inst", InstanceArgs.builder()
///             .label("my-inst")
///             .region("us-east")
///             .type("g6-nanode-1")
///             .build());
///
///         var my_lock = new Lock("my-lock", LockArgs.builder()
///             .entityId(my_inst.id())
///             .entityType("linode")
///             .lockType("cannot_delete")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-lock:
///     type: linode:Lock
///     properties:
///       entityId: ${["my-inst"].id}
///       entityType: linode
///       lockType: cannot_delete
///   my-inst:
///     type: linode:Instance
///     properties:
///       label: my-inst
///       region: us-east
///       type: g6-nanode-1
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_inst = new linode.Instance("my-inst", {
///     label: "my-inst",
///     region: "us-east",
///     type: "g6-nanode-1",
/// });
/// const my_lock = new linode.Lock("my-lock", {
///     entityId: my_inst.id,
///     entityType: "linode",
///     lockType: "cannot_delete_with_subresources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_inst = linode.Instance("my-inst",
///     label="my-inst",
///     region="us-east",
///     type="g6-nanode-1")
/// my_lock = linode.Lock("my-lock",
///     entity_id=my_inst.id,
///     entity_type="linode",
///     lock_type="cannot_delete_with_subresources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_inst = new Linode.Instance("my-inst", new()
///     {
///         Label = "my-inst",
///         Region = "us-east",
///         Type = "g6-nanode-1",
///     });
///
///     var my_lock = new Linode.Lock("my-lock", new()
///     {
///         EntityId = my_inst.Id,
///         EntityType = "linode",
///         LockType = "cannot_delete_with_subresources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_inst, err := linode.NewInstance(ctx, "my-inst", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-inst"),
/// 			Region: pulumi.String("us-east"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewLock(ctx, "my-lock", &linode.LockArgs{
/// 			EntityId:   my_inst.ID(),
/// 			EntityType: pulumi.String("linode"),
/// 			LockType:   pulumi.String("cannot_delete_with_subresources"),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Lock;
/// import com.pulumi.linode.LockArgs;
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
///         var my_inst = new Instance("my-inst", InstanceArgs.builder()
///             .label("my-inst")
///             .region("us-east")
///             .type("g6-nanode-1")
///             .build());
///
///         var my_lock = new Lock("my-lock", LockArgs.builder()
///             .entityId(my_inst.id())
///             .entityType("linode")
///             .lockType("cannot_delete_with_subresources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-lock:
///     type: linode:Lock
///     properties:
///       entityId: ${["my-inst"].id}
///       entityType: linode
///       lockType: cannot_delete_with_subresources
///   my-inst:
///     type: linode:Instance
///     properties:
///       label: my-inst
///       region: us-east
///       type: g6-nanode-1
/// ```
///
///
/// ## Import
///
/// Locks can be imported using the Lock's ID, e.g.
///
/// ```sh
/// $ pulumi import linode:index/lock:Lock my-lock 1234567
/// ```
class Lock extends pulumi.CustomResource {
  /// The ID of the entity to lock.
  late final pulumi.Output<int> entityId;
  /// The label of the locked entity.
  late final pulumi.Output<String> entityLabel;
  /// The type of the entity to lock. Currently only `linode` is supported. Note: Linodes that are part of an LKE cluster cannot be locked.
  late final pulumi.Output<String> entityType;
  /// The URL of the locked entity.
  late final pulumi.Output<String> entityUrl;
  /// The type of lock to apply. Only one lock type can exist per resource at a time. Valid values are:
  late final pulumi.Output<String> lockType;

  /// Creates a new [Lock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lock]. {@macro pulumi_index_lock_lock_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lock(
    String name, {
    LockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/lock:Lock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entityId = registerOutput<int>('entityId');
    this.entityLabel = registerOutput<String>('entityLabel');
    this.entityType = registerOutput<String>('entityType');
    this.entityUrl = registerOutput<String>('entityUrl');
    this.lockType = registerOutput<String>('lockType');
  }
}
