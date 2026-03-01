import 'package:pulumi/pulumi.dart' as pulumi;
import 'recycle_bin_args.dart';
import 'recycle_bin_state.dart';

/// Provides a File Storage (NAS) Recycle Bin resource.
///
/// For information about File Storage (NAS) Recycle Bin and how to use it, see [What is Recycle Bin](https://www.alibabacloud.com/help/en/doc-detail/264185.html).
///
/// > **NOTE:** Available in v1.155.0+.
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
/// const example = alicloud.nas.getZones({
///     fileSystemType: "standard",
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     protocolType: "NFS",
///     storageType: "Performance",
///     description: "terraform-example",
///     encryptType: 1,
///     zoneId: example.then(example => example.zones?.[0]?.zoneId),
/// });
/// const exampleRecycleBin = new alicloud.nas.RecycleBin("example", {
///     fileSystemId: exampleFileSystem.id,
///     reservedDays: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.get_zones(file_system_type="standard")
/// example_file_system = alicloud.nas.FileSystem("example",
///     protocol_type="NFS",
///     storage_type="Performance",
///     description="terraform-example",
///     encrypt_type=1,
///     zone_id=example.zones[0].zone_id)
/// example_recycle_bin = alicloud.nas.RecycleBin("example",
///     file_system_id=example_file_system.id,
///     reserved_days=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "standard",
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "NFS",
///         StorageType = "Performance",
///         Description = "terraform-example",
///         EncryptType = 1,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId),
///     });
///
///     var exampleRecycleBin = new AliCloud.Nas.RecycleBin("example", new()
///     {
///         FileSystemId = exampleFileSystem.Id,
///         ReservedDays = 3,
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
/// 		example, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("standard"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType: pulumi.String("NFS"),
/// 			StorageType:  pulumi.String("Performance"),
/// 			Description:  pulumi.String("terraform-example"),
/// 			EncryptType:  pulumi.Int(1),
/// 			ZoneId:       pulumi.String(example.Zones[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewRecycleBin(ctx, "example", &nas.RecycleBinArgs{
/// 			FileSystemId: exampleFileSystem.ID(),
/// 			ReservedDays: pulumi.Int(3),
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
/// import com.pulumi.alicloud.nas.RecycleBin;
/// import com.pulumi.alicloud.nas.RecycleBinArgs;
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
///         final var example = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("standard")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .protocolType("NFS")
///             .storageType("Performance")
///             .description("terraform-example")
///             .encryptType(1)
///             .zoneId(example.zones()[0].zoneId())
///             .build());
///
///         var exampleRecycleBin = new RecycleBin("exampleRecycleBin", RecycleBinArgs.builder()
///             .fileSystemId(exampleFileSystem.id())
///             .reservedDays(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       protocolType: NFS
///       storageType: Performance
///       description: terraform-example
///       encryptType: '1'
///       zoneId: ${example.zones[0].zoneId}
///   exampleRecycleBin:
///     type: alicloud:nas:RecycleBin
///     name: example
///     properties:
///       fileSystemId: ${exampleFileSystem.id}
///       reservedDays: 3
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: standard
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Recycle Bin can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/recycleBin:RecycleBin example <file_system_id>
/// ```
class RecycleBin extends pulumi.CustomResource {
  /// The ID of the file system for which you want to enable the recycle bin feature.
  late final pulumi.Output<String> fileSystemId;
  /// The period for which the files in the recycle bin are retained. Unit: days. Valid values: `1` to `180`.
  late final pulumi.Output<int> reservedDays;
  /// The status of the recycle bin.
  late final pulumi.Output<String> status;

  /// Creates a new [RecycleBin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecycleBin]. {@macro pulumi_nas_recycle_bin_recycle_bin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecycleBin(
    String name, {
    RecycleBinArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/recycleBin:RecycleBin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.reservedDays = registerOutput<int>('reservedDays');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [RecycleBin] resource's state with the given [name] and [id].
  static RecycleBin get(
    String name,
    pulumi.Input<String> id, {
    RecycleBinState? state,
  }) {
    return RecycleBin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RecycleBin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/recycleBin:RecycleBin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.reservedDays = registerOutput<int>('reservedDays');
    this.status = registerOutput<String>('status');
  }
}
