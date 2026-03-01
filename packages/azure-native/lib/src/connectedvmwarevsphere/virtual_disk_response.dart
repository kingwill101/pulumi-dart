// ignore_for_file: unused_element, unnecessary_cast


/// Virtual disk model
class VirtualDiskResponse {
  /// Gets or sets the controller id.
  final int? controllerKey;
  /// Gets or sets the device key value.
  final int? deviceKey;
  /// Gets or sets the device name.
  final String? deviceName;
  /// Gets or sets the disk mode.
  final String? diskMode;
  /// Gets or sets the disk object id.
  final String diskObjectId;
  /// Gets or sets the disk total size.
  final int? diskSizeGB;
  /// Gets or sets the disk backing type.
  final String? diskType;
  /// Gets or sets the label of the virtual disk in vCenter.
  final String label;
  /// Gets or sets the name of the virtual disk.
  final String? name;
  /// Gets or sets the unit number of the disk on the controller.
  final int? unitNumber;

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
      controllerKey: map['controllerKey'] == null ? null : map['controllerKey'] as int,
      deviceKey: map['deviceKey'] == null ? null : map['deviceKey'] as int,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      diskMode: map['diskMode'] == null ? null : map['diskMode'] as String,
      diskObjectId: map['diskObjectId'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      label: map['label'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      unitNumber: map['unitNumber'] == null ? null : map['unitNumber'] as int,
    );
  }
}

