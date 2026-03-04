import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_args.dart';
import 'file_system_nfs_acl.dart';
import 'file_system_options.dart';
import 'file_system_recycle_bin.dart';
import 'file_system_smb_acl.dart';
import 'file_system_state.dart';

/// Provides a File Storage (NAS) File System resource.
///
/// File System Instance.
///
/// For information about File Storage (NAS) File System and how to use it, see [What is File System](https://www.alibabacloud.com/help/en/nas/developer-reference/api-nas-2017-06-26-createfilesystem).
///
/// &gt; **NOTE:** Available since v1.33.0.
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
/// const _default = alicloud.nas.getZones({
///     fileSystemType: "standard",
/// });
/// const defaultFileSystem = new alicloud.nas.FileSystem("default", {
///     protocolType: "NFS",
///     storageType: "Capacity",
///     description: name,
///     encryptType: 1,
///     fileSystemType: "standard",
///     recycleBin: {
///         status: "Enable",
///         reservedDays: 10,
///     },
///     nfsAcl: {
///         enabled: true,
///     },
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneId),
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
/// default = alicloud.nas.get_zones(file_system_type="standard")
/// default_file_system = alicloud.nas.FileSystem("default",
///     protocol_type="NFS",
///     storage_type="Capacity",
///     description=name,
///     encrypt_type=1,
///     file_system_type="standard",
///     recycle_bin={
///         "status": "Enable",
///         "reserved_days": 10,
///     },
///     nfs_acl={
///         "enabled": True,
///     },
///     zone_id=default.zones[0].zone_id)
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
///     var @default = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "standard",
///     });
///
///     var defaultFileSystem = new AliCloud.Nas.FileSystem("default", new()
///     {
///         ProtocolType = "NFS",
///         StorageType = "Capacity",
///         Description = name,
///         EncryptType = 1,
///         FileSystemType = "standard",
///         RecycleBin = new AliCloud.Nas.Inputs.FileSystemRecycleBinArgs
///         {
///             Status = "Enable",
///             ReservedDays = 10,
///         },
///         NfsAcl = new AliCloud.Nas.Inputs.FileSystemNfsAclArgs
///         {
///             Enabled = true,
///         },
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("standard"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewFileSystem(ctx, "default", &nas.FileSystemArgs{
/// 			ProtocolType:   pulumi.String("NFS"),
/// 			StorageType:    pulumi.String("Capacity"),
/// 			Description:    pulumi.String(name),
/// 			EncryptType:    pulumi.Int(1),
/// 			FileSystemType: pulumi.String("standard"),
/// 			RecycleBin: &nas.FileSystemRecycleBinArgs{
/// 				Status:       pulumi.String("Enable"),
/// 				ReservedDays: pulumi.Int(10),
/// 			},
/// 			NfsAcl: &nas.FileSystemNfsAclArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ZoneId: pulumi.String(_default.Zones[0].ZoneId),
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
/// import com.pulumi.alicloud.nas.inputs.FileSystemRecycleBinArgs;
/// import com.pulumi.alicloud.nas.inputs.FileSystemNfsAclArgs;
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
///         final var default = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("standard")
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .protocolType("NFS")
///             .storageType("Capacity")
///             .description(name)
///             .encryptType(1)
///             .fileSystemType("standard")
///             .recycleBin(FileSystemRecycleBinArgs.builder()
///                 .status("Enable")
///                 .reservedDays(10)
///                 .build())
///             .nfsAcl(FileSystemNfsAclArgs.builder()
///                 .enabled(true)
///                 .build())
///             .zoneId(default_.zones()[0].zoneId())
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
///   defaultFileSystem:
///     type: alicloud:nas:FileSystem
///     name: default
///     properties:
///       protocolType: NFS
///       storageType: Capacity
///       description: ${name}
///       encryptType: 1
///       fileSystemType: standard
///       recycleBin:
///         status: Enable
///         reservedDays: '10'
///       nfsAcl:
///         enabled: true
///       zoneId: ${default.zones[0].zoneId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: standard
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) File System can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/fileSystem:FileSystem example <id>
/// ```
class FileSystem extends pulumi.CustomResource {
  /// File system capacity.
  ///
  /// Unit: GiB, required and valid when FileSystemType = extreme or cpfs.
  ///
  /// For optional values, please refer to the actual specifications on the purchase page:
  /// -[Fast NAS Pay-As-You-Go Page](https://common-buy.aliyun.com/? commodityCode=nas_extreme_post#/buy)
  /// -[Fast NAS Package Monthly Purchase Page](https://common-buy.aliyun.com/? commodityCode=nas_extreme#/buy)
  /// -[Parallel File System CPFS Pay-As-You-Go Purchase Page](https://common-buy.aliyun.com/? commodityCode=nas_cpfs_post#/buy)
  /// -[Parallel File System CPFS Package Monthly Purchase Page](https://common-buy.aliyun.com/? commodityCode=cpfs#/buy)
  late final pulumi.Output<int> capacity;

  /// CreateTime
  late final pulumi.Output<String> createTime;

  /// File system description.
  ///
  /// Restrictions:
  /// - 2~128 English or Chinese characters in length.
  /// - Must start with upper and lower case letters or Chinese, and cannot start with'http: // 'and'https.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  late final pulumi.Output<String?> description;

  /// Whether the file system is encrypted.
  ///
  /// Use the KMS service hosting key to encrypt and store the file system disk data. When reading and writing encrypted data, there is no need to decrypt it.
  ///
  /// Value:
  /// - 0 (default): not encrypted.
  /// - 1:NAS managed key. NAS managed keys are supported when FileSystemType = standard or extreme.
  /// - 2: User management key. You can manage keys only when FileSystemType = extreme.
  late final pulumi.Output<int> encryptType;

  /// File system type.
  ///
  /// Value:
  /// - standard (default): Universal NAS
  /// - extreme: extreme NAS
  /// - cpfs: file storage CPFS
  late final pulumi.Output<String> fileSystemType;
  late final pulumi.Output<String?> keytab;
  late final pulumi.Output<String?> keytabMd5;

  /// The ID of the KMS key.
  /// This parameter is required only when EncryptType = 2.
  late final pulumi.Output<String> kmsKeyId;

  /// NFS ACL See `nfs_acl` below.
  late final pulumi.Output<FileSystemNfsAcl> nfsAcl;

  /// Option. See `options` below.
  late final pulumi.Output<FileSystemOptions> options;

  /// File transfer protocol type.
  /// - When FileSystemType = standard, the values are NFS and SMB.
  /// - When FileSystemType = extreme, the value is NFS.
  /// - When FileSystemType = cpfs, the value is cpfs.
  late final pulumi.Output<String> protocolType;

  /// Recycle Bin See `recycle_bin` below.
  late final pulumi.Output<FileSystemRecycleBin> recycleBin;

  /// Storage redundancy type. Only effective for General CPFS.Options: Locally Redundant Storage (LRS), Zone-Redundant Storage (ZRS) Default value: LRS
  late final pulumi.Output<String> redundancyType;

  /// Redundancy vSwitch ID list. Only set when the file system's storage redundancy type is Zone-Redundant Storage (ZRS), and must set vSwitch IDs from three different availability zones under the same VPC.
  late final pulumi.Output<List<String>?> redundancyVswitchIds;

  /// RegionId
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// SMB ACL See `smb_acl` below.
  late final pulumi.Output<FileSystemSmbAcl> smbAcl;

  /// Only extreme NAS is supported.
  ///
  /// &gt; **NOTE:** A file system is created from a snapshot. The version of the created file system is the same as that of the snapshot source file system. For example, if the source file system version of the snapshot is 1 and you need to create A file system of version 2, you can first create A file system A from the snapshot, then create A file system B that meets the configuration of version 2, copy the data in file system A to file system B, and migrate the business to file system B after the copy is completed.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> snapshotId;

  /// File system status. Includes:(such as creating a mount point) can only be performed when the file system is in the Running state.
  late final pulumi.Output<String> status;

  /// The storage type.
  /// - When FileSystemType = standard, the values are Performance, Capacity, and Premium.
  /// - When FileSystemType = extreme, the value is standard or advance.
  /// - When FileSystemType = cpfs, the values are advance_100(100MB/s/TiB baseline) and advance_200(200MB/s/TiB baseline).
  late final pulumi.Output<String> storageType;

  /// Label information collection.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the VPC network.
  /// This parameter must be configured when FileSystemType = cpfs.
  /// When the FileSystemType is standard or extreme, this parameter is reserved for the interface and has not taken effect yet. You do not need to configure it.
  late final pulumi.Output<String?> vpcId;

  /// The ID of the switch.
  /// This parameter must be configured when FileSystemType = cpfs.
  /// When the FileSystemType is standard or extreme, this parameter is reserved for the interface and has not taken effect yet. You do not need to configure it.
  late final pulumi.Output<String?> vswitchId;

  /// The zone ID.
  ///
  /// The usable area refers to the physical area where power and network are independent of each other in the same area.
  ///
  /// When the FileSystemType is set to standard, this parameter is optional. By default, a zone that meets the conditions is randomly selected based on the ProtocolType and StorageType configurations. This parameter is required when FileSystemType = extreme or FileSystemType = cpfs.
  ///
  /// &gt; **NOTE:** - file systems in different zones in the same region communicate with ECS cloud servers.
  ///
  /// &gt; **NOTE:** - We recommend that the file system and the ECS instance belong to the same zone to avoid cross-zone latency.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [FileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystem]. {@macro pulumi_nas_file_system_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystem(
    String name, {
    FileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capacity = registerOutput<int>('capacity');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    encryptType = registerOutput<int>('encryptType');
    fileSystemType = registerOutput<String>('fileSystemType');
    keytab = registerOutput<String?>('keytab');
    keytabMd5 = registerOutput<String?>('keytabMd5');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    nfsAcl = registerOutput<FileSystemNfsAcl>('nfsAcl');
    this.options = registerOutput<FileSystemOptions>('options');
    protocolType = registerOutput<String>('protocolType');
    recycleBin = registerOutput<FileSystemRecycleBin>('recycleBin');
    redundancyType = registerOutput<String>('redundancyType');
    redundancyVswitchIds = registerOutput<List<String>?>(
      'redundancyVswitchIds',
    );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    smbAcl = registerOutput<FileSystemSmbAcl>('smbAcl');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [FileSystem] resource's state with the given [name] and [id].
  static FileSystem get(
    String name,
    pulumi.Input<String> id, {
    FileSystemState? state,
  }) {
    return FileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capacity = registerOutput<int>('capacity');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    encryptType = registerOutput<int>('encryptType');
    fileSystemType = registerOutput<String>('fileSystemType');
    keytab = registerOutput<String?>('keytab');
    keytabMd5 = registerOutput<String?>('keytabMd5');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    nfsAcl = registerOutput<FileSystemNfsAcl>('nfsAcl');
    this.options = registerOutput<FileSystemOptions>('options');
    protocolType = registerOutput<String>('protocolType');
    recycleBin = registerOutput<FileSystemRecycleBin>('recycleBin');
    redundancyType = registerOutput<String>('redundancyType');
    redundancyVswitchIds = registerOutput<List<String>?>(
      'redundancyVswitchIds',
    );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    smbAcl = registerOutput<FileSystemSmbAcl>('smbAcl');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
