// ignore_for_file: unused_element, unnecessary_cast


class DeviceDeviceProperty {
  /// The Data Box Edge/Gateway device local capacity in MB.
  final int? capacity;
  /// Type of compute roles configured.
  final List<String>? configuredRoleTypes;
  /// The Data Box Edge/Gateway device culture.
  final String? culture;
  /// The device software version number of the device (e.g. 1.2.18105.6).
  final String? hcsVersion;
  /// The Data Box Edge/Gateway device model.
  final String? model;
  /// The number of nodes in the cluster.
  final int? nodeCount;
  /// The Serial Number of Data Box Edge/Gateway device.
  final String? serialNumber;
  /// The Data Box Edge/Gateway device software version.
  final String? softwareVersion;
  /// The status of the Data Box Edge/Gateway device.
  final String? status;
  /// The Data Box Edge/Gateway device timezone.
  final String? timeZone;
  /// The type of the Data Box Edge/Gateway device.
  final String? type;

  /// Creates a new [DeviceDeviceProperty].
  /// [capacity] The Data Box Edge/Gateway device local capacity in MB.
  /// [configuredRoleTypes] Type of compute roles configured.
  /// [culture] The Data Box Edge/Gateway device culture.
  /// [hcsVersion] The device software version number of the device (e.g. 1.2.18105.6).
  /// [model] The Data Box Edge/Gateway device model.
  /// [nodeCount] The number of nodes in the cluster.
  /// [serialNumber] The Serial Number of Data Box Edge/Gateway device.
  /// [softwareVersion] The Data Box Edge/Gateway device software version.
  /// [status] The status of the Data Box Edge/Gateway device.
  /// [timeZone] The Data Box Edge/Gateway device timezone.
  /// [type] The type of the Data Box Edge/Gateway device.
  DeviceDeviceProperty({
    this.capacity,
    this.configuredRoleTypes,
    this.culture,
    this.hcsVersion,
    this.model,
    this.nodeCount,
    this.serialNumber,
    this.softwareVersion,
    this.status,
    this.timeZone,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'configuredRoleTypes': ?configuredRoleTypes,
      'culture': ?culture,
      'hcsVersion': ?hcsVersion,
      'model': ?model,
      'nodeCount': ?nodeCount,
      'serialNumber': ?serialNumber,
      'softwareVersion': ?softwareVersion,
      'status': ?status,
      'timeZone': ?timeZone,
      'type': ?type,
    };
  }

  factory DeviceDeviceProperty.fromMap(Map<String, dynamic> map) {
    return DeviceDeviceProperty(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      configuredRoleTypes: map['configuredRoleTypes'] == null ? null : (map['configuredRoleTypes'] as List).cast<String>(),
      culture: map['culture'] == null ? null : map['culture'] as String,
      hcsVersion: map['hcsVersion'] == null ? null : map['hcsVersion'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      softwareVersion: map['softwareVersion'] == null ? null : map['softwareVersion'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

