// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_azurestackhci_virtual_hard_disk_args_doc}
/// The set of arguments for VirtualHardDisk.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_virtual_hard_disk_args_doc}
class VirtualHardDiskArgs {
  /// Block size in bytes
  final pulumi.Input<int>? blockSizeBytes;
  /// Storage ContainerID of the storage container to be used for VHD
  final pulumi.Input<String>? containerId;
  /// Boolean indicating whether it is an existing local hard disk or if one should be created.
  final pulumi.Input<bool>? createFromLocal;
  /// The format of the actual VHD file [vhd, vhdx]
  final pulumi.Input<String>? diskFileFormat;
  /// Size of the disk in GB
  final pulumi.Input<double>? diskSizeGB;
  /// URL for downloading or accessing the virtual hard disk. This URL points to a secure link from where the VHD can be downloaded or accessed directly.
  final pulumi.Input<String>? downloadUrl;
  /// Boolean for enabling dynamic sizing on the virtual hard disk
  final pulumi.Input<bool>? dynamic;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final pulumi.Input<String>? hyperVGeneration;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Logical sector in bytes
  final pulumi.Input<int>? logicalSectorBytes;
  /// Physical sector in bytes
  final pulumi.Input<int>? physicalSectorBytes;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual hard disk
  final pulumi.Input<String>? virtualHardDiskName;

  /// Creates a new [VirtualHardDiskArgs].
  /// [blockSizeBytes] Block size in bytes
  /// [containerId] Storage ContainerID of the storage container to be used for VHD
  /// [createFromLocal] Boolean indicating whether it is an existing local hard disk or if one should be created.
  /// [diskFileFormat] The format of the actual VHD file [vhd, vhdx]
  /// [diskSizeGB] Size of the disk in GB
  /// [downloadUrl] URL for downloading or accessing the virtual hard disk. This URL points to a secure link from where the VHD can be downloaded or accessed directly.
  /// [dynamic] Boolean for enabling dynamic sizing on the virtual hard disk
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [location] The geo-location where the resource lives
  /// [logicalSectorBytes] Logical sector in bytes
  /// [physicalSectorBytes] Physical sector in bytes
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualHardDiskName] Name of the virtual hard disk
  VirtualHardDiskArgs({
    this.blockSizeBytes,
    this.containerId,
    this.createFromLocal,
    this.diskFileFormat,
    this.diskSizeGB,
    this.downloadUrl,
    this.dynamic,
    this.extendedLocation,
    this.hyperVGeneration,
    this.location,
    this.logicalSectorBytes,
    this.physicalSectorBytes,
    required this.resourceGroupName,
    this.tags,
    this.virtualHardDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockSizeBytes': ?blockSizeBytes,
      'containerId': ?containerId,
      'createFromLocal': ?createFromLocal,
      'diskFileFormat': ?diskFileFormat,
      'diskSizeGB': ?diskSizeGB,
      'downloadUrl': ?downloadUrl,
      'dynamic': ?dynamic,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'location': ?location,
      'logicalSectorBytes': ?logicalSectorBytes,
      'physicalSectorBytes': ?physicalSectorBytes,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualHardDiskName': ?virtualHardDiskName,
    };
  }

  factory VirtualHardDiskArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskArgs(
      blockSizeBytes: map['blockSizeBytes'] == null ? null : (map['blockSizeBytes'] as int).input(),
      containerId: map['containerId'] == null ? null : (map['containerId'] as String).input(),
      createFromLocal: map['createFromLocal'] == null ? null : (map['createFromLocal'] as bool).input(),
      diskFileFormat: map['diskFileFormat'] == null ? null : (map['diskFileFormat'] as String).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as double).input(),
      downloadUrl: map['downloadUrl'] == null ? null : (map['downloadUrl'] as String).input(),
      dynamic: map['dynamic'] == null ? null : (map['dynamic'] as bool).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logicalSectorBytes: map['logicalSectorBytes'] == null ? null : (map['logicalSectorBytes'] as int).input(),
      physicalSectorBytes: map['physicalSectorBytes'] == null ? null : (map['physicalSectorBytes'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualHardDiskName: map['virtualHardDiskName'] == null ? null : (map['virtualHardDiskName'] as String).input(),
    );
  }
}

