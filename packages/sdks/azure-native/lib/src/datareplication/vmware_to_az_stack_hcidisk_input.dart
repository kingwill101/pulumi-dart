// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareToAzStack disk input.
class VMwareToAzStackHCIDiskInput {
  /// Gets or sets the type of the virtual hard disk, vhd or vhdx.
  final pulumi.Input<String> diskFileFormat;
  /// Gets or sets the disk Id.
  final pulumi.Input<String> diskId;
  /// Gets or sets the disk size in GB.
  final pulumi.Input<double> diskSizeGB;
  /// Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// disk.
  final pulumi.Input<bool?>? isDynamic;
  /// Gets or sets a value indicating whether disk is os disk.
  final pulumi.Input<bool> isOsDisk;
  /// Gets or sets the target storage account ARM Id.
  final pulumi.Input<String?>? storageContainerId;

  /// Creates a new [VMwareToAzStackHCIDiskInput].
  /// [diskFileFormat] Gets or sets the type of the virtual hard disk, vhd or vhdx.
  /// [diskId] Gets or sets the disk Id.
  /// [diskSizeGB] Gets or sets the disk size in GB.
  /// [isDynamic] Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// [isOsDisk] Gets or sets a value indicating whether disk is os disk.
  /// [storageContainerId] Gets or sets the target storage account ARM Id.
  const VMwareToAzStackHCIDiskInput({
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

  factory VMwareToAzStackHCIDiskInput.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIDiskInput(
      diskFileFormat: pulumi.Input.fromValue(map['diskFileFormat'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskSizeGB: pulumi.Input.fromValue((map['diskSizeGB'] as num).toDouble()),
      isDynamic: (() { final guardedValue = map['isDynamic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOsDisk: pulumi.Input.fromValue(map['isOsDisk'] as bool),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
