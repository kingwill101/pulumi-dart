import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a ENS Snapshot resource. Snapshot. When you use it for the first time, please contact the product classmates to add a resource whitelist.
///
/// For information about ENS Snapshot and how to use it, see [What is Snapshot](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createsnapshot).
///
/// &gt; **NOTE:** Available since v1.213.0.
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
/// const disk = new alicloud.ens.Disk("disk", {
///     category: "cloud_efficiency",
///     size: 20,
///     paymentType: "PayAsYouGo",
///     ensRegionId: "ch-zurich-1",
/// });
/// const _default = new alicloud.ens.Snapshot("default", {
///     description: name,
///     ensRegionId: "ch-zurich-1",
///     snapshotName: name,
///     diskId: disk.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// disk = alicloud.ens.Disk("disk",
///     category="cloud_efficiency",
///     size=20,
///     payment_type="PayAsYouGo",
///     ens_region_id="ch-zurich-1")
/// default = alicloud.ens.Snapshot("default",
///     description=name,
///     ens_region_id="ch-zurich-1",
///     snapshot_name=name,
///     disk_id=disk.id)
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
///     var disk = new AliCloud.Ens.Disk("disk", new()
///     {
///         Category = "cloud_efficiency",
///         Size = 20,
///         PaymentType = "PayAsYouGo",
///         EnsRegionId = "ch-zurich-1",
///     });
///
///     var @default = new AliCloud.Ens.Snapshot("default", new()
///     {
///         Description = name,
///         EnsRegionId = "ch-zurich-1",
///         SnapshotName = name,
///         DiskId = disk.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		disk, err := ens.NewDisk(ctx, "disk", &ens.DiskArgs{
/// 			Category:    pulumi.String("cloud_efficiency"),
/// 			Size:        pulumi.Int(20),
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			EnsRegionId: pulumi.String("ch-zurich-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewSnapshot(ctx, "default", &ens.SnapshotArgs{
/// 			Description:  pulumi.String(name),
/// 			EnsRegionId:  pulumi.String("ch-zurich-1"),
/// 			SnapshotName: pulumi.String(name),
/// 			DiskId:       disk.ID(),
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
/// import com.pulumi.alicloud.ens.Disk;
/// import com.pulumi.alicloud.ens.DiskArgs;
/// import com.pulumi.alicloud.ens.Snapshot;
/// import com.pulumi.alicloud.ens.SnapshotArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .category("cloud_efficiency")
///             .size(20)
///             .paymentType("PayAsYouGo")
///             .ensRegionId("ch-zurich-1")
///             .build());
///
///         var default_ = new Snapshot("default", SnapshotArgs.builder()
///             .description(name)
///             .ensRegionId("ch-zurich-1")
///             .snapshotName(name)
///             .diskId(disk.id())
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
///   disk:
///     type: alicloud:ens:Disk
///     properties:
///       category: cloud_efficiency
///       size: '20'
///       paymentType: PayAsYouGo
///       ensRegionId: ch-zurich-1
///   default:
///     type: alicloud:ens:Snapshot
///     properties:
///       description: ${name}
///       ensRegionId: ch-zurich-1
///       snapshotName: ${name}
///       diskId: ${disk.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/snapshot:Snapshot example <id>
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Instance creation timeIt is expressed in accordance with the ISO8601 standard and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.Example value: 2020-08-20 T14:52:28Z.
  late final pulumi.Output<String> createTime;
  /// Snapshot Description Information.
  late final pulumi.Output<String?> description;
  /// Cloud Disk ID.
  late final pulumi.Output<String> diskId;
  /// The node ID of ENS.
  late final pulumi.Output<String> ensRegionId;
  /// Name of the snapshot instance.
  late final pulumi.Output<String?> snapshotName;
  /// Snapshot Status. Valid values: creating, available, deleting, error.
  late final pulumi.Output<String> status;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_ens_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskId = registerOutput<String>('diskId');
    ensRegionId = registerOutput<String>('ensRegionId');
    snapshotName = registerOutput<String?>('snapshotName');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskId = registerOutput<String>('diskId');
    ensRegionId = registerOutput<String>('ensRegionId');
    snapshotName = registerOutput<String?>('snapshotName');
    status = registerOutput<String>('status');
  }
}
