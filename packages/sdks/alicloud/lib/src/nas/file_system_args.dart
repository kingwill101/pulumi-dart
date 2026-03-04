// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_nfs_acl.dart';
import 'file_system_options.dart';
import 'file_system_recycle_bin.dart';
import 'file_system_smb_acl.dart';

/// {@template pulumi_nas_file_system_file_system_args_doc}
/// The set of arguments for FileSystem.
/// {@endtemplate}
/// {@macro pulumi_nas_file_system_file_system_args_doc}
class FileSystemArgs {
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
  final pulumi.Input<String> protocolType;

  /// Recycle Bin See `recycle_bin` below.
  final pulumi.Input<FileSystemRecycleBin>? recycleBin;

  /// Storage redundancy type. Only effective for General CPFS.Options: Locally Redundant Storage (LRS), Zone-Redundant Storage (ZRS) Default value: LRS
  final pulumi.Input<String>? redundancyType;

  /// Redundancy vSwitch ID list. Only set when the file system's storage redundancy type is Zone-Redundant Storage (ZRS), and must set vSwitch IDs from three different availability zones under the same VPC.
  final pulumi.Input<List<String>>? redundancyVswitchIds;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// SMB ACL See `smb_acl` below.
  final pulumi.Input<FileSystemSmbAcl>? smbAcl;

  /// Only extreme NAS is supported.
  ///
  /// &gt; **NOTE:** A file system is created from a snapshot. The version of the created file system is the same as that of the snapshot source file system. For example, if the source file system version of the snapshot is 1 and you need to create A file system of version 2, you can first create A file system A from the snapshot, then create A file system B that meets the configuration of version 2, copy the data in file system A to file system B, and migrate the business to file system B after the copy is completed.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? snapshotId;

  /// The storage type.
  /// - When FileSystemType = standard, the values are Performance, Capacity, and Premium.
  /// - When FileSystemType = extreme, the value is standard or advance.
  /// - When FileSystemType = cpfs, the values are advance_100(100MB/s/TiB baseline) and advance_200(200MB/s/TiB baseline).
  final pulumi.Input<String> storageType;

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
  /// &gt; **NOTE:** - file systems in different zones in the same region communicate with ECS cloud servers.
  ///
  /// &gt; **NOTE:** - We recommend that the file system and the ECS instance belong to the same zone to avoid cross-zone latency.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [FileSystemArgs].
  /// [capacity] File system capacity.
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
  /// [resourceGroupId] The ID of the resource group.
  /// [smbAcl] SMB ACL See `smb_acl` below.
  /// [snapshotId] Only extreme NAS is supported.
  /// [storageType] The storage type.
  /// [tags] Label information collection.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The ID of the switch.
  /// [zoneId] The zone ID.
  FileSystemArgs({
    this.capacity,
    this.description,
    this.encryptType,
    this.fileSystemType,
    this.keytab,
    this.keytabMd5,
    this.kmsKeyId,
    this.nfsAcl,
    this.options,
    required this.protocolType,
    this.recycleBin,
    this.redundancyType,
    this.redundancyVswitchIds,
    this.resourceGroupId,
    this.smbAcl,
    this.snapshotId,
    required this.storageType,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'description': ?description,
      'encryptType': ?encryptType,
      'fileSystemType': ?fileSystemType,
      'keytab': ?keytab,
      'keytabMd5': ?keytabMd5,
      'kmsKeyId': ?kmsKeyId,
      'nfsAcl':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemNfsAcl,
            Map<String, dynamic>
          >(nfsAcl, (value) => value.toMap()),
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'protocolType': protocolType,
      'recycleBin':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemRecycleBin,
            Map<String, dynamic>
          >(recycleBin, (value) => value.toMap()),
      'redundancyType': ?redundancyType,
      'redundancyVswitchIds': ?redundancyVswitchIds,
      'resourceGroupId': ?resourceGroupId,
      'smbAcl':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemSmbAcl,
            Map<String, dynamic>
          >(smbAcl, (value) => value.toMap()),
      'snapshotId': ?snapshotId,
      'storageType': storageType,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory FileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemArgs(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptType: (() {
        final guardedValue = map['encryptType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fileSystemType: (() {
        final guardedValue = map['fileSystemType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keytab: (() {
        final guardedValue = map['keytab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keytabMd5: (() {
        final guardedValue = map['keytabMd5'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfsAcl: (() {
        final guardedValue = map['nfsAcl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemNfsAcl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      recycleBin: (() {
        final guardedValue = map['recycleBin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemRecycleBin.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      redundancyType: (() {
        final guardedValue = map['redundancyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redundancyVswitchIds: (() {
        final guardedValue = map['redundancyVswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smbAcl: (() {
        final guardedValue = map['smbAcl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemSmbAcl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
