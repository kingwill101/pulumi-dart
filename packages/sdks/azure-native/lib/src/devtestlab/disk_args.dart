// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_disk_args_doc}
class DiskArgs {
  /// When backed by a blob, the name of the VHD blob without extension.
  final pulumi.Input<String?>? diskBlobName;
  /// The size of the disk in Gibibytes.
  final pulumi.Input<int?>? diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  final pulumi.Input<dynamic>? diskType;
  /// When backed by a blob, the URI of underlying blob.
  final pulumi.Input<String?>? diskUri;
  /// The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  final pulumi.Input<String?>? hostCaching;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The resource ID of the VM to which this disk is leased.
  final pulumi.Input<String?>? leasedByLabVmId;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final pulumi.Input<String?>? managedDiskId;
  /// The name of the disk.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When backed by a blob, the storage account where the blob is.
  final pulumi.Input<String?>? storageAccountId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  /// [location] The geo-location where the resource lives
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] The name of the disk.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountId] When backed by a blob, the storage account where the blob is.
  /// [tags] Resource tags.
  /// [userName] The name of the user profile.
  const DiskArgs({
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
      diskBlobName: (() { final guardedValue = map['diskBlobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGiB: (() { final guardedValue = map['diskSizeGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      diskUri: (() { final guardedValue = map['diskUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostCaching: (() { final guardedValue = map['hostCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      leasedByLabVmId: (() { final guardedValue = map['leasedByLabVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
