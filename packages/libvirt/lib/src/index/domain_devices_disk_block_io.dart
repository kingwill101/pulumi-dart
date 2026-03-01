// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBlockIo {
  /// Sets the granularity for discard operations performed by the disk.
  final double? discardGranularity;
  /// Specifies the logical block size of the disk, affecting read/write operations.
  final double? logicalBlockSize;
  /// Configures the physical block size of the disk.
  final double? physicalBlockSize;

  /// Creates a new [DomainDevicesDiskBlockIo].
  /// [discardGranularity] Sets the granularity for discard operations performed by the disk.
  /// [logicalBlockSize] Specifies the logical block size of the disk, affecting read/write operations.
  /// [physicalBlockSize] Configures the physical block size of the disk.
  DomainDevicesDiskBlockIo({
    this.discardGranularity,
    this.logicalBlockSize,
    this.physicalBlockSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardGranularity': ?discardGranularity,
      'logicalBlockSize': ?logicalBlockSize,
      'physicalBlockSize': ?physicalBlockSize,
    };
  }

  factory DomainDevicesDiskBlockIo.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBlockIo(
      discardGranularity: map['discardGranularity'] == null ? null : map['discardGranularity'] as double,
      logicalBlockSize: map['logicalBlockSize'] == null ? null : map['logicalBlockSize'] as double,
      physicalBlockSize: map['physicalBlockSize'] == null ? null : map['physicalBlockSize'] as double,
    );
  }
}

