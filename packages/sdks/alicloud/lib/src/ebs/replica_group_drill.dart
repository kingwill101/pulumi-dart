import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_group_drill_args.dart';
import 'replica_group_drill_state.dart';

/// Provides a EBS Replica Group Drill resource.
///
/// For information about Elastic Block Storage(EBS) Replica Group Drill and how to use it, see [What is Replica Group Drill](https://next.api.alibabacloud.com/document/ebs/2021-07-30/StartReplicaGroupDrill).
///
/// &gt; **NOTE:** Available since v1.215.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.ebs.ReplicaGroupDrill("default", {groupId: "pg-m1H9aaOUIGsDUwgZ"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ebs.ReplicaGroupDrill("default", group_id="pg-m1H9aaOUIGsDUwgZ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Ebs.ReplicaGroupDrill("default", new()
///     {
///         GroupId = "pg-m1H9aaOUIGsDUwgZ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
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
/// 		_, err := ebs.NewReplicaGroupDrill(ctx, "default", &ebs.ReplicaGroupDrillArgs{
/// 			GroupId: pulumi.String("pg-m1H9aaOUIGsDUwgZ"),
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
/// import com.pulumi.alicloud.ebs.ReplicaGroupDrill;
/// import com.pulumi.alicloud.ebs.ReplicaGroupDrillArgs;
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
///         var default_ = new ReplicaGroupDrill("default", ReplicaGroupDrillArgs.builder()
///             .groupId("pg-m1H9aaOUIGsDUwgZ")
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
///     type: alicloud:ebs:ReplicaGroupDrill
///     properties:
///       groupId: pg-m1H9aaOUIGsDUwgZ
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EBS Replica Group Drill can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/replicaGroupDrill:ReplicaGroupDrill example <group_id>:<replica_group_drill_id>
/// ```
class ReplicaGroupDrill extends pulumi.CustomResource {
  /// The ID of the replication group. You can use the describediskreplicaggroups interface to query the asynchronous replication group list to obtain the value of the replication group ID input parameter.
  late final pulumi.Output<String> groupId;

  /// The first ID of the resource.
  late final pulumi.Output<String> replicaGroupDrillId;

  /// Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  late final pulumi.Output<String> status;

  /// Creates a new [ReplicaGroupDrill].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaGroupDrill]. {@macro pulumi_ebs_replica_group_drill_replica_group_drill_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaGroupDrill(
    String name, {
    ReplicaGroupDrillArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/replicaGroupDrill:ReplicaGroupDrill',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    replicaGroupDrillId = registerOutput<String>('replicaGroupDrillId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ReplicaGroupDrill] resource's state with the given [name] and [id].
  static ReplicaGroupDrill get(
    String name,
    pulumi.Input<String> id, {
    ReplicaGroupDrillState? state,
  }) {
    return ReplicaGroupDrill._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicaGroupDrill._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/replicaGroupDrill:ReplicaGroupDrill',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    replicaGroupDrillId = registerOutput<String>('replicaGroupDrillId');
    status = registerOutput<String>('status');
  }
}
