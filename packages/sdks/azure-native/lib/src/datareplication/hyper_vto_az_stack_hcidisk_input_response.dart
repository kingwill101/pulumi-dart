// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperVToAzStack disk input.
class HyperVToAzStackHCIDiskInputResponse {
  /// Gets or sets the type of the virtual hard disk, vhd or vhdx.
  final pulumi.Input<String> diskFileFormat;
  /// Gets or sets the disk Id.
  final pulumi.Input<String> diskId;
  /// Gets or sets the disk size in GB.
  final pulumi.Input<double> diskSizeGB;
  /// Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// disk.
  final pulumi.Input<bool>? isDynamic;
  /// Gets or sets a value indicating whether disk is os disk.
  final pulumi.Input<bool> isOsDisk;
  /// Gets or sets the target storage account ARM Id.
  final pulumi.Input<String>? storageContainerId;

  /// Creates a new [HyperVToAzStackHCIDiskInputResponse].
  /// [diskFileFormat] Gets or sets the type of the virtual hard disk, vhd or vhdx.
  /// [diskId] Gets or sets the disk Id.
  /// [diskSizeGB] Gets or sets the disk size in GB.
  /// [isDynamic] Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// [isOsDisk] Gets or sets a value indicating whether disk is os disk.
  /// [storageContainerId] Gets or sets the target storage account ARM Id.
  HyperVToAzStackHCIDiskInputResponse({
    required this.diskFileFormat,
    required this.diskId,
    required this.diskSizeGB,
    this.isDynamic,
    required this.isOsDisk,
    this.storageContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskFileFormat': diskFileFormat,
      'diskId': diskId,
      'diskSizeGB': diskSizeGB,
      'isDynamic': ?isDynamic,
      'isOsDisk': isOsDisk,
      'storageContainerId': ?storageContainerId,
    };
  }

  factory HyperVToAzStackHCIDiskInputResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIDiskInputResponse(
      diskFileFormat: (map['diskFileFormat'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskSizeGB: (map['diskSizeGB'] as double).input(),
      isDynamic: map['isDynamic'] == null ? null : (map['isDynamic'] as bool).input(),
      isOsDisk: (map['isOsDisk'] as bool).input(),
      storageContainerId: map['storageContainerId'] == null ? null : (map['storageContainerId'] as String).input(),
    );
  }
}

