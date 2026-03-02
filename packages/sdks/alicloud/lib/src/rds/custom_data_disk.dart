// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomDataDisk {
  /// Instance storage type
  /// local_ssd: local SSD disk
  /// cloud_essd:ESSD PL1 cloud disk
  final pulumi.Input<String>? category;
  /// Cloud Disk Performance
  /// Currently only supports PL1
  final pulumi.Input<String>? performanceLevel;
  /// Instance storage space. Unit: GB.
  final pulumi.Input<int>? size;

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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
    );
  }
}

