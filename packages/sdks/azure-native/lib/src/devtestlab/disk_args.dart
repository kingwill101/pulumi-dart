// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_disk_args_doc}
class DiskArgs {
  /// When backed by a blob, the name of the VHD blob without extension.
  final pulumi.Input<String>? diskBlobName;
  /// The size of the disk in Gibibytes.
  final pulumi.Input<int>? diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  final pulumi.Input<String>? diskType;
  /// When backed by a blob, the URI of underlying blob.
  final pulumi.Input<String>? diskUri;
  /// The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  final pulumi.Input<String>? hostCaching;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The resource ID of the VM to which this disk is leased.
  final pulumi.Input<String>? leasedByLabVmId;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final pulumi.Input<String>? managedDiskId;
  /// The name of the Disk
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When backed by a blob, the storage account where the blob is.
  final pulumi.Input<String>? storageAccountId;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [DiskArgs].
  /// [diskBlobName] When backed by a blob, the name of the VHD blob without extension.
  /// [diskSizeGiB] The size of the disk in Gibibytes.
  /// [diskType] The storage type for the disk (i.e. Standard, Premium).
  /// [diskUri] When backed by a blob, the URI of underlying blob.
  /// [hostCaching] The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  /// [labName] The name of the lab.
  /// [leasedByLabVmId] The resource ID of the VM to which this disk is leased.
  /// [location] The location of the resource.
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] The name of the Disk
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountId] When backed by a blob, the storage account where the blob is.
  /// [tags] The tags of the resource.
  /// [userName] The name of the user profile.
  DiskArgs({
    this.diskBlobName,
    this.diskSizeGiB,
    this.diskType,
    this.diskUri,
    this.hostCaching,
    required this.labName,
    this.leasedByLabVmId,
    this.location,
    this.managedDiskId,
    this.name,
    required this.resourceGroupName,
    this.storageAccountId,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskBlobName': ?diskBlobName,
      'diskSizeGiB': ?diskSizeGiB,
      'diskType': ?diskType,
      'diskUri': ?diskUri,
      'hostCaching': ?hostCaching,
      'labName': labName,
      'leasedByLabVmId': ?leasedByLabVmId,
      'location': ?location,
      'managedDiskId': ?managedDiskId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      diskBlobName: map['diskBlobName'] == null ? null : (map['diskBlobName']! as String).input(),
      diskSizeGiB: map['diskSizeGiB'] == null ? null : (map['diskSizeGiB']! as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      diskUri: map['diskUri'] == null ? null : (map['diskUri']! as String).input(),
      hostCaching: map['hostCaching'] == null ? null : (map['hostCaching']! as String).input(),
      labName: (map['labName'] as String).input(),
      leasedByLabVmId: map['leasedByLabVmId'] == null ? null : (map['leasedByLabVmId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedDiskId: map['managedDiskId'] == null ? null : (map['managedDiskId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

