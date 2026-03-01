// ignore_for_file: unused_element, unnecessary_cast


class DomainBlockIoTuneDevice {
  /// Specifies the path of the block device to which the tuning parameters apply.
  final String path;
  /// Sets the maximum number of bytes per second that can be read from the device.
  final double? readBytesSec;
  /// Sets the maximum number of read I/O operations per second that can be performed on the device.
  final double? readIopsSec;
  /// Configures the relative weight of the device, influencing scheduling priority during I/O operations.
  final double? weight;
  /// Sets the maximum number of bytes per second that can be written to the device.
  final double? writeBytesSec;
  /// Sets the maximum number of write I/O operations per second that can be performed on the device.
  final double? writeIopsSec;

  /// Creates a new [DomainBlockIoTuneDevice].
  /// [path] Specifies the path of the block device to which the tuning parameters apply.
  /// [readBytesSec] Sets the maximum number of bytes per second that can be read from the device.
  /// [readIopsSec] Sets the maximum number of read I/O operations per second that can be performed on the device.
  /// [weight] Configures the relative weight of the device, influencing scheduling priority during I/O operations.
  /// [writeBytesSec] Sets the maximum number of bytes per second that can be written to the device.
  /// [writeIopsSec] Sets the maximum number of write I/O operations per second that can be performed on the device.
  DomainBlockIoTuneDevice({
    required this.path,
    this.readBytesSec,
    this.readIopsSec,
    this.weight,
    this.writeBytesSec,
    this.writeIopsSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'readBytesSec': ?readBytesSec,
      'readIopsSec': ?readIopsSec,
      'weight': ?weight,
      'writeBytesSec': ?writeBytesSec,
      'writeIopsSec': ?writeIopsSec,
    };
  }

  factory DomainBlockIoTuneDevice.fromMap(Map<String, dynamic> map) {
    return DomainBlockIoTuneDevice(
      path: map['path'] as String,
      readBytesSec: map['readBytesSec'] == null ? null : map['readBytesSec'] as double,
      readIopsSec: map['readIopsSec'] == null ? null : map['readIopsSec'] as double,
      weight: map['weight'] == null ? null : map['weight'] as double,
      writeBytesSec: map['writeBytesSec'] == null ? null : map['writeBytesSec'] as double,
      writeIopsSec: map['writeIopsSec'] == null ? null : map['writeIopsSec'] as double,
    );
  }
}

