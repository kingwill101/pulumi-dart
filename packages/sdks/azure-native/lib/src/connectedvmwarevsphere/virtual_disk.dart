// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual disk model
class VirtualDisk {
  /// Gets or sets the controller id.
  final pulumi.Input<int>? controllerKey;
  /// Gets or sets the device key value.
  final pulumi.Input<int>? deviceKey;
  /// Gets or sets the device name.
  final pulumi.Input<String>? deviceName;
  /// Gets or sets the disk mode.
  final pulumi.Input<String>? diskMode;
  /// Gets or sets the disk total size.
  final pulumi.Input<int>? diskSizeGB;
  /// Gets or sets the disk backing type.
  final pulumi.Input<String>? diskType;
  /// Gets or sets the name of the virtual disk.
  final pulumi.Input<String>? name;
  /// Gets or sets the unit number of the disk on the controller.
  final pulumi.Input<int>? unitNumber;

  /// Creates a new [VirtualDisk].
  /// [controllerKey] Gets or sets the controller id.
  /// [deviceKey] Gets or sets the device key value.
  /// [deviceName] Gets or sets the device name.
  /// [diskMode] Gets or sets the disk mode.
  /// [diskSizeGB] Gets or sets the disk total size.
  /// [diskType] Gets or sets the disk backing type.
  /// [name] Gets or sets the name of the virtual disk.
  /// [unitNumber] Gets or sets the unit number of the disk on the controller.
  const VirtualDisk({
    this.controllerKey,
    this.deviceKey,
    this.deviceName,
    this.diskMode,
    this.diskSizeGB,
    this.diskType,
    this.name,
    this.unitNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerKey': ?controllerKey,
      'deviceKey': ?deviceKey,
      'deviceName': ?deviceName,
      'diskMode': ?diskMode,
      'diskSizeGB': ?diskSizeGB,
      'diskType': ?diskType,
      'name': ?name,
      'unitNumber': ?unitNumber,
    };
  }

  factory VirtualDisk.fromMap(Map<String, dynamic> map) {
    return VirtualDisk(
      controllerKey: (() { final guardedValue = map['controllerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deviceKey: (() { final guardedValue = map['deviceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskMode: (() { final guardedValue = map['diskMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitNumber: (() { final guardedValue = map['unitNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
