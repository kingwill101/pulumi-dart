// ignore_for_file: unused_element, unnecessary_cast


class CustomDataDisk {
  /// Instance storage type
  /// local_ssd: local SSD disk
  /// cloud_essd:ESSD PL1 cloud disk
  final String? category;
  /// Cloud Disk Performance
  /// Currently only supports PL1
  final String? performanceLevel;
  /// Instance storage space. Unit: GB.
  final int? size;

  /// Creates a new [CustomDataDisk].
  /// [category] Instance storage type
  /// [performanceLevel] Cloud Disk Performance
  /// [size] Instance storage space. Unit: GB.
  CustomDataDisk({
    this.category,
    this.performanceLevel,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
    };
  }

  factory CustomDataDisk.fromMap(Map<String, dynamic> map) {
    return CustomDataDisk(
      category: map['category'] == null ? null : map['category'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

