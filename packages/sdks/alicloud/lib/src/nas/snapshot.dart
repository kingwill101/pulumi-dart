import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a File Storage (NAS) Snapshot resource.
///
/// For information about File Storage (NAS) Snapshot and how to use it, see [What is Snapshot](https://www.alibabacloud.com/help/en/doc-detail/126549.html).
///
/// &gt; **NOTE:** Available since v1.152.0.
///
/// &gt; **NOTE:** Only Extreme NAS file systems support the snapshot feature.
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
/// const name = config.get("name") || "testacc";
/// const _default = alicloud.nas.getZones({
///     fileSystemType: "extreme",
/// });
/// const defaultFileSystem = new alicloud.nas.FileSystem("default", {
///     fileSystemType: "extreme",
///     protocolType: "NFS",
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneId),
///     storageType: "standard",
///     capacity: 100,
/// });
/// const defaultSnapshot = new alicloud.nas.Snapshot("default", {
///     fileSystemId: defaultFileSystem.id,
///     description: name,
///     retentionDays: 20,
///     snapshotName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "testacc"
/// default = alicloud.nas.get_zones(file_system_type="extreme")
/// default_file_system = alicloud.nas.FileSystem("default",
///     file_system_type="extreme",
///     protocol_type="NFS",
///     zone_id=default.zones[0].zone_id,
///     storage_type="standard",
///     capacity=100)
/// default_snapshot = alicloud.nas.Snapshot("default",
///     file_system_id=default_file_system.id,
///     description=name,
///     retention_days=20,
///     snapshot_name=name)
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
///     var name = config.Get("name") ?? "testacc";
///     var @default = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "extreme",
///     });
///
///     var defaultFileSystem = new AliCloud.Nas.FileSystem("default", new()
///     {
///         FileSystemType = "extreme",
///         ProtocolType = "NFS",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
///         StorageType = "standard",
///         Capacity = 100,
///     });
///
///     var defaultSnapshot = new AliCloud.Nas.Snapshot("default", new()
///     {
///         FileSystemId = defaultFileSystem.Id,
///         Description = name,
///         RetentionDays = 20,
///         SnapshotName = name,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "testacc"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("extreme"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFileSystem, err := nas.NewFileSystem(ctx, "default", &nas.FileSystemArgs{
/// 			FileSystemType: pulumi.String("extreme"),
/// 			ProtocolType:   pulumi.String("NFS"),
/// 			ZoneId:         pulumi.String(_default.Zones[0].ZoneId),
/// 			StorageType:    pulumi.String("standard"),
/// 			Capacity:       pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewSnapshot(ctx, "default", &nas.SnapshotArgs{
/// 			FileSystemId:  defaultFileSystem.ID(),
/// 			Description:   pulumi.String(name),
/// 			RetentionDays: pulumi.Int(20),
/// 			SnapshotName:  pulumi.String(name),
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.Snapshot;
/// import com.pulumi.alicloud.nas.SnapshotArgs;
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
///         final var name = config.get("name").orElse("testacc");
///         final var default = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("extreme")
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .fileSystemType("extreme")
///             .protocolType("NFS")
///             .zoneId(default_.zones()[0].zoneId())
///             .storageType("standard")
///             .capacity(100)
///             .build());
///
///         var defaultSnapshot = new Snapshot("defaultSnapshot", SnapshotArgs.builder()
///             .fileSystemId(defaultFileSystem.id())
///             .description(name)
///             .retentionDays(20)
///             .snapshotName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: testacc
/// resources:
///   defaultFileSystem:
///     type: alicloud:nas:FileSystem
///     name: default
///     properties:
///       fileSystemType: extreme
///       protocolType: NFS
///       zoneId: ${default.zones[0].zoneId}
///       storageType: standard
///       capacity: 100
///   defaultSnapshot:
///     type: alicloud:nas:Snapshot
///     name: default
///     properties:
///       fileSystemId: ${defaultFileSystem.id}
///       description: ${name}
///       retentionDays: 20
///       snapshotName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: extreme
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/snapshot:Snapshot example <id>
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The description of the snapshot. It must be `2` to `256` characters in length and cannot start with `https://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The retention period of the snapshot. Unit: days. Valid values:
  /// * `-1`: The default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  late final pulumi.Output<int?> retentionDays;
  /// SnapshotName. It must be `2` to `128` characters in length and must start with a letter, but cannot start with `https://` or `https://`.
  late final pulumi.Output<String?> snapshotName;
  /// The status of the snapshot.
  late final pulumi.Output<String> status;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_nas_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    fileSystemId = registerOutput<String>('fileSystemId');
    retentionDays = registerOutput<int?>('retentionDays');
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
          'alicloud:nas/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    fileSystemId = registerOutput<String>('fileSystemId');
    retentionDays = registerOutput<int?>('retentionDays');
    snapshotName = registerOutput<String?>('snapshotName');
    status = registerOutput<String>('status');
  }
}
