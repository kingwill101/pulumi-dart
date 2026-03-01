// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskIoTune {
  /// Specifies the name of the group for tuning parameters, organizing settings related to disk I/O performance.
  final String? groupName;
  /// Sets the maximum number of read bytes per second for the disk, regulating its data throughput.
  final double? readBytesSec;
  /// Configures the maximum read bytes per second limit, further controlling the disk's data transfer rate.
  final double? readBytesSecMax;
  /// Defines the length of maximum read bytes per second setting, detailing how long this limit is effective.
  final double? readBytesSecMaxLength;
  /// Specifies the maximum number of read I/O operations per second for the disk, controlling its responsiveness.
  final double? readIopsSec;
  /// Sets the upper limit for read IOPS on the disk, refining its input/output performance.
  final double? readIopsSecMax;
  /// Configures the effective duration for the maximum read IOPS limit.
  final double? readIopsSecMaxLength;
  /// Defines the size-related performance in IOPS for the disk, optimizing access based on data size.
  final double? sizeIopsSec;
  /// Sets the overall maximum bytes transfer rate for all operations on the disk.
  final double? totalBytesSec;
  /// Specifies the maximum limit on total bytes per second across all I/O operations for the disk.
  final double? totalBytesSecMax;
  /// Describes the duration that the maximum total bytes per second setting is enforced on the disk.
  final double? totalBytesSecMaxLength;
  /// Configures the overall maximum IOPS for the disk, controlling the number of operations performed over time.
  final double? totalIopsSec;
  /// Sets the maximum IOPS limit for all operations handled by the disk.
  final double? totalIopsSecMax;
  /// Defines how long the total IOPS limit is maintained during operations on the disk.
  final double? totalIopsSecMaxLength;
  /// Configures the maximum number of bytes written per second for the disk, managing data output rates.
  final double? writeBytesSec;
  /// Sets the maximum write bytes per second limit, controlling the disk's writing capability.
  final double? writeBytesSecMax;
  /// Specifies the effective length for the maximum write bytes per second setting.
  final double? writeBytesSecMaxLength;
  /// Defines the maximum number of write I/O operations per second for the disk, influencing its performance.
  final double? writeIopsSec;
  /// Sets the upper limit for write IOPS on the disk, adjusting its output operations.
  final double? writeIopsSecMax;
  /// Configures the effective duration for the maximum write IOPS limit.
  final double? writeIopsSecMaxLength;

  /// Creates a new [DomainDevicesDiskIoTune].
  /// [groupName] Specifies the name of the group for tuning parameters, organizing settings related to disk I/O performance.
  /// [readBytesSec] Sets the maximum number of read bytes per second for the disk, regulating its data throughput.
  /// [readBytesSecMax] Configures the maximum read bytes per second limit, further controlling the disk's data transfer rate.
  /// [readBytesSecMaxLength] Defines the length of maximum read bytes per second setting, detailing how long this limit is effective.
  /// [readIopsSec] Specifies the maximum number of read I/O operations per second for the disk, controlling its responsiveness.
  /// [readIopsSecMax] Sets the upper limit for read IOPS on the disk, refining its input/output performance.
  /// [readIopsSecMaxLength] Configures the effective duration for the maximum read IOPS limit.
  /// [sizeIopsSec] Defines the size-related performance in IOPS for the disk, optimizing access based on data size.
  /// [totalBytesSec] Sets the overall maximum bytes transfer rate for all operations on the disk.
  /// [totalBytesSecMax] Specifies the maximum limit on total bytes per second across all I/O operations for the disk.
  /// [totalBytesSecMaxLength] Describes the duration that the maximum total bytes per second setting is enforced on the disk.
  /// [totalIopsSec] Configures the overall maximum IOPS for the disk, controlling the number of operations performed over time.
  /// [totalIopsSecMax] Sets the maximum IOPS limit for all operations handled by the disk.
  /// [totalIopsSecMaxLength] Defines how long the total IOPS limit is maintained during operations on the disk.
  /// [writeBytesSec] Configures the maximum number of bytes written per second for the disk, managing data output rates.
  /// [writeBytesSecMax] Sets the maximum write bytes per second limit, controlling the disk's writing capability.
  /// [writeBytesSecMaxLength] Specifies the effective length for the maximum write bytes per second setting.
  /// [writeIopsSec] Defines the maximum number of write I/O operations per second for the disk, influencing its performance.
  /// [writeIopsSecMax] Sets the upper limit for write IOPS on the disk, adjusting its output operations.
  /// [writeIopsSecMaxLength] Configures the effective duration for the maximum write IOPS limit.
  DomainDevicesDiskIoTune({
    this.groupName,
    this.readBytesSec,
    this.readBytesSecMax,
    this.readBytesSecMaxLength,
    this.readIopsSec,
    this.readIopsSecMax,
    this.readIopsSecMaxLength,
    this.sizeIopsSec,
    this.totalBytesSec,
    this.totalBytesSecMax,
    this.totalBytesSecMaxLength,
    this.totalIopsSec,
    this.totalIopsSecMax,
    this.totalIopsSecMaxLength,
    this.writeBytesSec,
    this.writeBytesSecMax,
    this.writeBytesSecMaxLength,
    this.writeIopsSec,
    this.writeIopsSecMax,
    this.writeIopsSecMaxLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'readBytesSec': ?readBytesSec,
      'readBytesSecMax': ?readBytesSecMax,
      'readBytesSecMaxLength': ?readBytesSecMaxLength,
      'readIopsSec': ?readIopsSec,
      'readIopsSecMax': ?readIopsSecMax,
      'readIopsSecMaxLength': ?readIopsSecMaxLength,
      'sizeIopsSec': ?sizeIopsSec,
      'totalBytesSec': ?totalBytesSec,
      'totalBytesSecMax': ?totalBytesSecMax,
      'totalBytesSecMaxLength': ?totalBytesSecMaxLength,
      'totalIopsSec': ?totalIopsSec,
      'totalIopsSecMax': ?totalIopsSecMax,
      'totalIopsSecMaxLength': ?totalIopsSecMaxLength,
      'writeBytesSec': ?writeBytesSec,
      'writeBytesSecMax': ?writeBytesSecMax,
      'writeBytesSecMaxLength': ?writeBytesSecMaxLength,
      'writeIopsSec': ?writeIopsSec,
      'writeIopsSecMax': ?writeIopsSecMax,
      'writeIopsSecMaxLength': ?writeIopsSecMaxLength,
    };
  }

  factory DomainDevicesDiskIoTune.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskIoTune(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      readBytesSec: map['readBytesSec'] == null ? null : map['readBytesSec'] as double,
      readBytesSecMax: map['readBytesSecMax'] == null ? null : map['readBytesSecMax'] as double,
      readBytesSecMaxLength: map['readBytesSecMaxLength'] == null ? null : map['readBytesSecMaxLength'] as double,
      readIopsSec: map['readIopsSec'] == null ? null : map['readIopsSec'] as double,
      readIopsSecMax: map['readIopsSecMax'] == null ? null : map['readIopsSecMax'] as double,
      readIopsSecMaxLength: map['readIopsSecMaxLength'] == null ? null : map['readIopsSecMaxLength'] as double,
      sizeIopsSec: map['sizeIopsSec'] == null ? null : map['sizeIopsSec'] as double,
      totalBytesSec: map['totalBytesSec'] == null ? null : map['totalBytesSec'] as double,
      totalBytesSecMax: map['totalBytesSecMax'] == null ? null : map['totalBytesSecMax'] as double,
      totalBytesSecMaxLength: map['totalBytesSecMaxLength'] == null ? null : map['totalBytesSecMaxLength'] as double,
      totalIopsSec: map['totalIopsSec'] == null ? null : map['totalIopsSec'] as double,
      totalIopsSecMax: map['totalIopsSecMax'] == null ? null : map['totalIopsSecMax'] as double,
      totalIopsSecMaxLength: map['totalIopsSecMaxLength'] == null ? null : map['totalIopsSecMaxLength'] as double,
      writeBytesSec: map['writeBytesSec'] == null ? null : map['writeBytesSec'] as double,
      writeBytesSecMax: map['writeBytesSecMax'] == null ? null : map['writeBytesSecMax'] as double,
      writeBytesSecMaxLength: map['writeBytesSecMaxLength'] == null ? null : map['writeBytesSecMaxLength'] as double,
      writeIopsSec: map['writeIopsSec'] == null ? null : map['writeIopsSec'] as double,
      writeIopsSecMax: map['writeIopsSecMax'] == null ? null : map['writeIopsSecMax'] as double,
      writeIopsSecMaxLength: map['writeIopsSecMaxLength'] == null ? null : map['writeIopsSecMaxLength'] as double,
    );
  }
}

