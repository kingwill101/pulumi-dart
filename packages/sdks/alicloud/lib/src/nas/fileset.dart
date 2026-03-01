import 'package:pulumi/pulumi.dart' as pulumi;
import 'fileset_args.dart';
import 'fileset_state.dart';

/// Provides a File Storage (NAS) Fileset resource.
///
/// Fileset of CPFS file system.
///
/// For information about File Storage (NAS) Fileset and how to use it, see [What is Fileset](https://www.alibabacloud.com/help/en/doc-detail/27530.html).
///
/// > **NOTE:** Available since v1.153.0.
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
///     fileSystemType: "cpfs",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[1]?.zoneId),
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     protocolType: "cpfs",
///     storageType: "advance_200",
///     fileSystemType: "cpfs",
///     capacity: 3600,
///     zoneId: example.then(example => example.zones?.[1]?.zoneId),
///     vpcId: exampleNetwork.id,
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleFileset = new alicloud.nas.Fileset("example", {
///     fileSystemId: exampleFileSystem.id,
///     description: "terraform-example",
///     fileSystemPath: "/example_path/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.get_zones(file_system_type="cpfs")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[1].zone_id)
/// example_file_system = alicloud.nas.FileSystem("example",
///     protocol_type="cpfs",
///     storage_type="advance_200",
///     file_system_type="cpfs",
///     capacity=3600,
///     zone_id=example.zones[1].zone_id,
///     vpc_id=example_network.id,
///     vswitch_id=example_switch.id)
/// example_fileset = alicloud.nas.Fileset("example",
///     file_system_id=example_file_system.id,
///     description="terraform-example",
///     file_system_path="/example_path/")
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
///         FileSystemType = "cpfs",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[1]?.ZoneId),
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "cpfs",
///         StorageType = "advance_200",
///         FileSystemType = "cpfs",
///         Capacity = 3600,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[1]?.ZoneId),
///         VpcId = exampleNetwork.Id,
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleFileset = new AliCloud.Nas.Fileset("example", new()
///     {
///         FileSystemId = exampleFileSystem.Id,
///         Description = "terraform-example",
///         FileSystemPath = "/example_path/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("cpfs"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[1].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType:   pulumi.String("cpfs"),
/// 			StorageType:    pulumi.String("advance_200"),
/// 			FileSystemType: pulumi.String("cpfs"),
/// 			Capacity:       pulumi.Int(3600),
/// 			ZoneId:         pulumi.String(example.Zones[1].ZoneId),
/// 			VpcId:          exampleNetwork.ID(),
/// 			VswitchId:      exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewFileset(ctx, "example", &nas.FilesetArgs{
/// 			FileSystemId:   exampleFileSystem.ID(),
/// 			Description:    pulumi.String("terraform-example"),
/// 			FileSystemPath: pulumi.String("/example_path/"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.Fileset;
/// import com.pulumi.alicloud.nas.FilesetArgs;
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
///             .fileSystemType("cpfs")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[1].zoneId())
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .protocolType("cpfs")
///             .storageType("advance_200")
///             .fileSystemType("cpfs")
///             .capacity(3600)
///             .zoneId(example.zones()[1].zoneId())
///             .vpcId(exampleNetwork.id())
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleFileset = new Fileset("exampleFileset", FilesetArgs.builder()
///             .fileSystemId(exampleFileSystem.id())
///             .description("terraform-example")
///             .fileSystemPath("/example_path/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[1].zoneId}
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       protocolType: cpfs
///       storageType: advance_200
///       fileSystemType: cpfs
///       capacity: 3600
///       zoneId: ${example.zones[1].zoneId}
///       vpcId: ${exampleNetwork.id}
///       vswitchId: ${exampleSwitch.id}
///   exampleFileset:
///     type: alicloud:nas:Fileset
///     name: example
///     properties:
///       fileSystemId: ${exampleFileSystem.id}
///       description: terraform-example
///       fileSystemPath: /example_path/
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: cpfs
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Fileset can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/fileset:Fileset example <file_system_id>:<fileset_id>
/// ```
class Fileset extends pulumi.CustomResource {
  /// The time when Fileset was created.
  late final pulumi.Output<String> createTime;
  /// The instance release protection attribute, which specifies whether the instance can be released through the console or API( DeleteFileset).
  /// - true: Enable instance release protection.
  /// - false (default): Turn off instance release protection
  late final pulumi.Output<bool> deletionProtection;
  /// Description of Fileset.
  late final pulumi.Output<String?> description;
  /// Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The path of Fileset.
  late final pulumi.Output<String> fileSystemPath;
  /// Fileset ID
  late final pulumi.Output<String> filesetId;
  /// The status of Fileset. Includes:
  late final pulumi.Output<String> status;

  /// Creates a new [Fileset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fileset]. {@macro pulumi_nas_fileset_fileset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fileset(
    String name, {
    FilesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/fileset:Fileset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.fileSystemPath = registerOutput<String>('fileSystemPath');
    this.filesetId = registerOutput<String>('filesetId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Fileset] resource's state with the given [name] and [id].
  static Fileset get(
    String name,
    pulumi.Input<String> id, {
    FilesetState? state,
  }) {
    return Fileset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Fileset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/fileset:Fileset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.fileSystemPath = registerOutput<String>('fileSystemPath');
    this.filesetId = registerOutput<String>('filesetId');
    this.status = registerOutput<String>('status');
  }
}
