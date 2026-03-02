// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual disk model
class VirtualDiskResponse {
  /// Gets or sets the controller id.
  final pulumi.Input<int>? controllerKey;
  /// Gets or sets the device key value.
  final pulumi.Input<int>? deviceKey;
  /// Gets or sets the device name.
  final pulumi.Input<String>? deviceName;
  /// Gets or sets the disk mode.
  final pulumi.Input<String>? diskMode;
  /// Gets or sets the disk object id.
  final pulumi.Input<String> diskObjectId;
  /// Gets or sets the disk total size.
  final pulumi.Input<int>? diskSizeGB;
  /// Gets or sets the disk backing type.
  final pulumi.Input<String>? diskType;
  /// Gets or sets the label of the virtual disk in vCenter.
  final pulumi.Input<String> label;
  /// Gets or sets the name of the virtual disk.
  final pulumi.Input<String>? name;
  /// Gets or sets the unit number of the disk on the controller.
  final pulumi.Input<int>? unitNumber;

  /// Creates a new [VirtualDiskResponse].
  /// [controllerKey] Gets or sets the controller id.
  /// [deviceKey] Gets or sets the device key value.
  /// [deviceName] Gets or sets the device name.
  /// [diskMode] Gets or sets the disk mode.
  /// [diskObjectId] Gets or sets the disk object id.
  /// [diskSizeGB] Gets or sets the disk total size.
  /// [diskType] Gets or sets the disk backing type.
  /// [label] Gets or sets the label of the virtual disk in vCenter.
  /// [name] Gets or sets the name of the virtual disk.
  /// [unitNumber] Gets or sets the unit number of the disk on the controller.
  VirtualDiskResponse({
    this.controllerKey,
    this.deviceKey,
    this.deviceName,
    this.diskMode,
    required this.diskObjectId,
    this.diskSizeGB,
    this.diskType,
    required this.label,
    this.name,
    this.unitNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerKey': ?controllerKey,
      'deviceKey': ?deviceKey,
      'deviceName': ?deviceName,
      'diskMode': ?diskMode,
      'diskObjectId': diskObjectId,
      'diskSizeGB': ?diskSizeGB,
      'diskType': ?diskType,
      'label': label,
      'name': ?name,
      'unitNumber': ?unitNumber,
    };
  }

  factory VirtualDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDiskResponse(
      controllerKey: map['controllerKey'] == null ? null : (map['controllerKey'] as int).input(),
      deviceKey: map['deviceKey'] == null ? null : (map['deviceKey'] as int).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      diskMode: map['diskMode'] == null ? null : (map['diskMode'] as String).input(),
      diskObjectId: (map['diskObjectId'] as String).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      label: (map['label'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      unitNumber: map['unitNumber'] == null ? null : (map['unitNumber'] as int).input(),
    );
  }
}

