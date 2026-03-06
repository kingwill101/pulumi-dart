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
  final pulumi.Input<bool>? dynamic_;
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
  /// [dynamic_] Boolean for enabling dynamic sizing on the virtual hard disk
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [location] The geo-location where the resource lives
  /// [logicalSectorBytes] Logical sector in bytes
  /// [physicalSectorBytes] Physical sector in bytes
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualHardDiskName] Name of the virtual hard disk
  const VirtualHardDiskArgs({
    this.blockSizeBytes,
    this.containerId,
    this.createFromLocal,
    this.diskFileFormat,
    this.diskSizeGB,
    this.downloadUrl,
    this.dynamic_,
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
      'dynamic': ?dynamic_,
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
      blockSizeBytes: (() { final guardedValue = map['blockSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createFromLocal: (() { final guardedValue = map['createFromLocal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskFileFormat: (() { final guardedValue = map['diskFileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      downloadUrl: (() { final guardedValue = map['downloadUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamic_: (() { final guardedValue = map['dynamic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalSectorBytes: (() { final guardedValue = map['logicalSectorBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      physicalSectorBytes: (() { final guardedValue = map['physicalSectorBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHardDiskName: (() { final guardedValue = map['virtualHardDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

