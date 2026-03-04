import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_pair_drill_args.dart';
import 'replica_pair_drill_state.dart';

/// Provides a EBS Replica Pair Drill resource.
///
/// For information about Elastic Block Storage(EBS) Replica Pair Drill and how to use it, see [What is Replica Pair Drill](https://next.api.alibabacloud.com/document/ebs/2021-07-30/StartPairDrill).
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
/// const _default = new alicloud.ebs.ReplicaPairDrill("default", {pairId: "pair-cn-wwo3kjfq5001"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ebs.ReplicaPairDrill("default", pair_id="pair-cn-wwo3kjfq5001")
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
///     var @default = new AliCloud.Ebs.ReplicaPairDrill("default", new()
///     {
///         PairId = "pair-cn-wwo3kjfq5001",
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
/// 		_, err := ebs.NewReplicaPairDrill(ctx, "default", &ebs.ReplicaPairDrillArgs{
/// 			PairId: pulumi.String("pair-cn-wwo3kjfq5001"),
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
/// import com.pulumi.alicloud.ebs.ReplicaPairDrill;
/// import com.pulumi.alicloud.ebs.ReplicaPairDrillArgs;
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
///         var default_ = new ReplicaPairDrill("default", ReplicaPairDrillArgs.builder()
///             .pairId("pair-cn-wwo3kjfq5001")
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
///     type: alicloud:ebs:ReplicaPairDrill
///     properties:
///       pairId: pair-cn-wwo3kjfq5001
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EBS Replica Pair Drill can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/replicaPairDrill:ReplicaPairDrill example <pair_id>:<replica_pair_drill_id>
/// ```
class ReplicaPairDrill extends pulumi.CustomResource {
  /// Copy the ID of the pair. You can call DescribeDiskReplicaPairs to query the list of asynchronous replication pairs to obtain the replication pair ID.
  late final pulumi.Output<String> pairId;

  /// The first ID of the resource.
  late final pulumi.Output<String> replicaPairDrillId;

  /// Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  late final pulumi.Output<String> status;

  /// Creates a new [ReplicaPairDrill].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaPairDrill]. {@macro pulumi_ebs_replica_pair_drill_replica_pair_drill_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaPairDrill(
    String name, {
    ReplicaPairDrillArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/replicaPairDrill:ReplicaPairDrill',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pairId = registerOutput<String>('pairId');
    replicaPairDrillId = registerOutput<String>('replicaPairDrillId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ReplicaPairDrill] resource's state with the given [name] and [id].
  static ReplicaPairDrill get(
    String name,
    pulumi.Input<String> id, {
    ReplicaPairDrillState? state,
  }) {
    return ReplicaPairDrill._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicaPairDrill._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/replicaPairDrill:ReplicaPairDrill',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pairId = registerOutput<String>('pairId');
    replicaPairDrillId = registerOutput<String>('replicaPairDrillId');
    status = registerOutput<String>('status');
  }
}
