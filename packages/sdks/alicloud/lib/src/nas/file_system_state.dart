// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_nfs_acl.dart';
import 'file_system_options.dart';
import 'file_system_recycle_bin.dart';
import 'file_system_smb_acl.dart';

/// Input properties used for looking up and filtering FileSystem resources.
class FileSystemState {
  /// File system capacity.
  ///
  /// Unit: GiB, required and valid when FileSystemType = extreme or cpfs.
  ///
  /// For optional values, please refer to the actual specifications on the purchase page:
  /// -[Fast NAS Pay-As-You-Go Page](https://common-buy.aliyun.com/? commodityCode=nas_extreme_post#/buy)
  /// -[Fast NAS Package Monthly Purchase Page](https://common-buy.aliyun.com/? commodityCode=nas_extreme#/buy)
  /// -[Parallel File System CPFS Pay-As-You-Go Purchase Page](https://common-buy.aliyun.com/? commodityCode=nas_cpfs_post#/buy)
  /// -[Parallel File System CPFS Package Monthly Purchase Page](https://common-buy.aliyun.com/? commodityCode=cpfs#/buy)
  final pulumi.Input<int>? capacity;
  /// CreateTime
  final pulumi.Input<String>? createTime;
  /// File system description.
  ///
  /// Restrictions:
  /// - 2~128 English or Chinese characters in length.
  /// - Must start with upper and lower case letters or Chinese, and cannot start with'http: // 'and'https.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? description;
  /// Whether the file system is encrypted.
  ///
  /// Use the KMS service hosting key to encrypt and store the file system disk data. When reading and writing encrypted data, there is no need to decrypt it.
  ///
  /// Value:
  /// - 0 (default): not encrypted.
  /// - 1:NAS managed key. NAS managed keys are supported when FileSystemType = standard or extreme.
  /// - 2: User management key. You can manage keys only when FileSystemType = extreme.
  final pulumi.Input<int>? encryptType;
  /// File system type.
  ///
  /// Value:
  /// - standard (default): Universal NAS
  /// - extreme: extreme NAS
  /// - cpfs: file storage CPFS
  final pulumi.Input<String>? fileSystemType;
  final pulumi.Input<String>? keytab;
  final pulumi.Input<String>? keytabMd5;
  /// The ID of the KMS key.
  /// This parameter is required only when EncryptType = 2.
  final pulumi.Input<String>? kmsKeyId;
  /// NFS ACL See `nfs_acl` below.
  final pulumi.Input<FileSystemNfsAcl>? nfsAcl;
  /// Option. See `options` below.
  final pulumi.Input<FileSystemOptions>? options;
  /// File transfer protocol type.
  /// - When FileSystemType = standard, the values are NFS and SMB.
  /// - When FileSystemType = extreme, the value is NFS.
  /// - When FileSystemType = cpfs, the value is cpfs.
  final pulumi.Input<String>? protocolType;
  /// Recycle Bin See `recycle_bin` below.
  final pulumi.Input<FileSystemRecycleBin>? recycleBin;
  /// Storage redundancy type. Only effective for General CPFS.Options: Locally Redundant Storage (LRS), Zone-Redundant Storage (ZRS) Default value: LRS
  final pulumi.Input<String>? redundancyType;
  /// Redundancy vSwitch ID list. Only set when the file system's storage redundancy type is Zone-Redundant Storage (ZRS), and must set vSwitch IDs from three different availability zones under the same VPC.
  final pulumi.Input<List<String>>? redundancyVswitchIds;
  /// RegionId
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// SMB ACL See `smb_acl` below.
  final pulumi.Input<FileSystemSmbAcl>? smbAcl;
  /// Only extreme NAS is supported.
  ///
  /// > **NOTE:** A file system is created from a snapshot. The version of the created file system is the same as that of the snapshot source file system. For example, if the source file system version of the snapshot is 1 and you need to create A file system of version 2, you can first create A file system A from the snapshot, then create A file system B that meets the configuration of version 2, copy the data in file system A to file system B, and migrate the business to file system B after the copy is completed.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? snapshotId;
  /// File system status. Includes:(such as creating a mount point) can only be performed when the file system is in the Running state.
  final pulumi.Input<String>? status;
  /// The storage type.
  /// - When FileSystemType = standard, the values are Performance, Capacity, and Premium.
  /// - When FileSystemType = extreme, the value is standard or advance.
  /// - When FileSystemType = cpfs, the values are advance_100(100MB/s/TiB baseline) and advance_200(200MB/s/TiB baseline).
  final pulumi.Input<String>? storageType;
  /// Label information collection.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC network.
  /// This parameter must be configured when FileSystemType = cpfs.
  /// When the FileSystemType is standard or extreme, this parameter is reserved for the interface and has not taken effect yet. You do not need to configure it.
  final pulumi.Input<String>? vpcId;
  /// The ID of the switch.
  /// This parameter must be configured when FileSystemType = cpfs.
  /// When the FileSystemType is standard or extreme, this parameter is reserved for the interface and has not taken effect yet. You do not need to configure it.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  ///
  /// The usable area refers to the physical area where power and network are independent of each other in the same area.
  ///
  /// When the FileSystemType is set to standard, this parameter is optional. By default, a zone that meets the conditions is randomly selected based on the ProtocolType and StorageType configurations. This parameter is required when FileSystemType = extreme or FileSystemType = cpfs.
  ///
  /// > **NOTE:** - file systems in different zones in the same region communicate with ECS cloud servers.
  ///
  /// > **NOTE:** - We recommend that the file system and the ECS instance belong to the same zone to avoid cross-zone latency.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [FileSystemState].
  /// [capacity] File system capacity.
  /// [createTime] CreateTime
  /// [description] File system description.
  /// [encryptType] Whether the file system is encrypted.
  /// [fileSystemType] File system type.
  /// [keytab] Optional.
  /// [keytabMd5] Optional.
  /// [kmsKeyId] The ID of the KMS key.
  /// [nfsAcl] NFS ACL See `nfs_acl` below.
  /// [options] Option. See `options` below.
  /// [protocolType] File transfer protocol type.
  /// [recycleBin] Recycle Bin See `recycle_bin` below.
  /// [redundancyType] Storage redundancy type. Only effective for General CPFS.Options: Locally Redundant Storage (LRS), Zone-Redundant Storage (ZRS) Default value: LRS
  /// [redundancyVswitchIds] Redundancy vSwitch ID list. Only set when the file system's storage redundancy type is Zone-Redundant Storage (ZRS), and must set vSwitch IDs from three different availability zones under the same VPC.
  /// [regionId] RegionId
  /// [resourceGroupId] The ID of the resource group.
  /// [smbAcl] SMB ACL See `smb_acl` below.
  /// [snapshotId] Only extreme NAS is supported.
  /// [status] File system status. Includes:(such as creating a mount point) can only be performed when the file system is in the Running state.
  /// [storageType] The storage type.
  /// [tags] Label information collection.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The ID of the switch.
  /// [zoneId] The zone ID.
  FileSystemState({
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? encryptType,
    pulumi.Output<String>? fileSystemType,
    pulumi.Output<String>? keytab,
    pulumi.Output<String>? keytabMd5,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<FileSystemNfsAcl>? nfsAcl,
    pulumi.Output<FileSystemOptions>? options,
    pulumi.Output<String>? protocolType,
    pulumi.Output<FileSystemRecycleBin>? recycleBin,
    pulumi.Output<String>? redundancyType,
    pulumi.Output<List<String>>? redundancyVswitchIds,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<FileSystemSmbAcl>? smbAcl,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptType = pulumi.Input.asOptionalInput<int>(encryptType),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      keytab = pulumi.Input.asOptionalInput<String>(keytab),
      keytabMd5 = pulumi.Input.asOptionalInput<String>(keytabMd5),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      nfsAcl = pulumi.Input.asOptionalInput<FileSystemNfsAcl>(nfsAcl),
      options = pulumi.Input.asOptionalInput<FileSystemOptions>(options),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      recycleBin = pulumi.Input.asOptionalInput<FileSystemRecycleBin>(recycleBin),
      redundancyType = pulumi.Input.asOptionalInput<String>(redundancyType),
      redundancyVswitchIds = pulumi.Input.asOptionalInput<List<String>>(redundancyVswitchIds),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      smbAcl = pulumi.Input.asOptionalInput<FileSystemSmbAcl>(smbAcl),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'createTime': ?createTime,
      'description': ?description,
      'encryptType': ?encryptType,
      'fileSystemType': ?fileSystemType,
      'keytab': ?keytab,
      'keytabMd5': ?keytabMd5,
      'kmsKeyId': ?kmsKeyId,
      'nfsAcl': ?pulumi.Input.mapOptionalInputValue<FileSystemNfsAcl, Map<String, dynamic>>(nfsAcl, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<FileSystemOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'protocolType': ?protocolType,
      'recycleBin': ?pulumi.Input.mapOptionalInputValue<FileSystemRecycleBin, Map<String, dynamic>>(recycleBin, (value) => value.toMap()),
      'redundancyType': ?redundancyType,
      'redundancyVswitchIds': ?redundancyVswitchIds,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'smbAcl': ?pulumi.Input.mapOptionalInputValue<FileSystemSmbAcl, Map<String, dynamic>>(smbAcl, (value) => value.toMap()),
      'snapshotId': ?snapshotId,
      'status': ?status,
      'storageType': ?storageType,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory FileSystemState.fromMap(Map<String, dynamic> map) {
    return FileSystemState(
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptType: map['encryptType'] == null ? null : pulumi.Output.create<int>(map['encryptType'] as int),
      fileSystemType: map['fileSystemType'] == null ? null : pulumi.Output.create<String>(map['fileSystemType'] as String),
      keytab: map['keytab'] == null ? null : pulumi.Output.create<String>(map['keytab'] as String),
      keytabMd5: map['keytabMd5'] == null ? null : pulumi.Output.create<String>(map['keytabMd5'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      nfsAcl: map['nfsAcl'] == null ? null : pulumi.Output.create<FileSystemNfsAcl>(FileSystemNfsAcl.fromMap((map['nfsAcl'] as Map).cast<String, dynamic>())),
      options: map['options'] == null ? null : pulumi.Output.create<FileSystemOptions>(FileSystemOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      recycleBin: map['recycleBin'] == null ? null : pulumi.Output.create<FileSystemRecycleBin>(FileSystemRecycleBin.fromMap((map['recycleBin'] as Map).cast<String, dynamic>())),
      redundancyType: map['redundancyType'] == null ? null : pulumi.Output.create<String>(map['redundancyType'] as String),
      redundancyVswitchIds: map['redundancyVswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['redundancyVswitchIds'] as List).cast<String>()),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      smbAcl: map['smbAcl'] == null ? null : pulumi.Output.create<FileSystemSmbAcl>(FileSystemSmbAcl.fromMap((map['smbAcl'] as Map).cast<String, dynamic>())),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

