// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk_encryption_setting.dart';

class GetManagedDisksDisk {
  final String createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  final String diskAccessId;
  /// The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  final String diskEncryptionSetId;
  /// The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  final int diskIopsReadWrite;
  /// The bandwidth allowed for this disk.
  final int diskMbpsReadWrite;
  /// The size of the Managed Disk in gigabytes.
  final int diskSizeInGb;
  /// An `encryption_settings` block as defined below.
  final List<GetManagedDisksDiskEncryptionSetting> encryptionSettings;
  final String id;
  /// The ID of the source image used for creating this Managed Disk.
  final String imageReferenceId;
  /// The Azure location of the Managed Disk.
  final String location;
  /// The name of the Managed Disk.
  final String name;
  /// Policy for accessing the disk via network.
  final String networkAccessPolicy;
  /// The operating system used for this Managed Disk.
  final String osType;
  /// The ID of an existing Managed Disk which this Disk was created from.
  final String sourceResourceId;
  /// The Source URI for this Managed Disk.
  final String sourceUri;
  /// The ID of the Storage Account where the `source_uri` is located.
  final String storageAccountId;
  /// The storage account type for the Managed Disk.
  final String storageAccountType;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones where the Managed Disk exists.
  final List<String> zones;

  /// Creates a new [GetManagedDisksDisk].
  /// [createOption] Required.
  /// [diskAccessId] The ID of the disk access resource for using private endpoints on disks.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  /// [diskIopsReadWrite] The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  /// [diskMbpsReadWrite] The bandwidth allowed for this disk.
  /// [diskSizeInGb] The size of the Managed Disk in gigabytes.
  /// [encryptionSettings] An `encryption_settings` block as defined below.
  /// [id] Required.
  /// [imageReferenceId] The ID of the source image used for creating this Managed Disk.
  /// [location] The Azure location of the Managed Disk.
  /// [name] The name of the Managed Disk.
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The operating system used for this Managed Disk.
  /// [sourceResourceId] The ID of an existing Managed Disk which this Disk was created from.
  /// [sourceUri] The Source URI for this Managed Disk.
  /// [storageAccountId] The ID of the Storage Account where the `source_uri` is located.
  /// [storageAccountType] The storage account type for the Managed Disk.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones where the Managed Disk exists.
  GetManagedDisksDisk({
    required this.createOption,
    required this.diskAccessId,
    required this.diskEncryptionSetId,
    required this.diskIopsReadWrite,
    required this.diskMbpsReadWrite,
    required this.diskSizeInGb,
    required this.encryptionSettings,
    required this.id,
    required this.imageReferenceId,
    required this.location,
    required this.name,
    required this.networkAccessPolicy,
    required this.osType,
    required this.sourceResourceId,
    required this.sourceUri,
    required this.storageAccountId,
    required this.storageAccountType,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'diskAccessId': diskAccessId,
      'diskEncryptionSetId': diskEncryptionSetId,
      'diskIopsReadWrite': diskIopsReadWrite,
      'diskMbpsReadWrite': diskMbpsReadWrite,
      'diskSizeInGb': diskSizeInGb,
      'encryptionSettings': pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSetting, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'id': id,
      'imageReferenceId': imageReferenceId,
      'location': location,
      'name': name,
      'networkAccessPolicy': networkAccessPolicy,
      'osType': osType,
      'sourceResourceId': sourceResourceId,
      'sourceUri': sourceUri,
      'storageAccountId': storageAccountId,
      'storageAccountType': storageAccountType,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetManagedDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDisk(
      createOption: map['createOption'] as String,
      diskAccessId: map['diskAccessId'] as String,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      diskIopsReadWrite: map['diskIopsReadWrite'] as int,
      diskMbpsReadWrite: map['diskMbpsReadWrite'] as int,
      diskSizeInGb: map['diskSizeInGb'] as int,
      encryptionSettings: pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSetting>(map['encryptionSettings'], (value) => GetManagedDisksDiskEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageReferenceId: map['imageReferenceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkAccessPolicy: map['networkAccessPolicy'] as String,
      osType: map['osType'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      sourceUri: map['sourceUri'] as String,
      storageAccountId: map['storageAccountId'] as String,
      storageAccountType: map['storageAccountType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

