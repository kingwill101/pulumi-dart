// ignore_for_file: unused_element, unnecessary_cast


class InstanceSystemDisk {
  /// System disk type. Value
  /// - cloud_efficiency: Ultra cloud disk
  /// - cloud_ssd: Full Flash cloud disk
  /// - local_hdd: local hdd disk
  /// - local_ssd: local disk ssd.
  final String? category;
  /// System disk size, unit: GB.
  final int? size;

  /// Creates a new [InstanceSystemDisk].
  /// [category] System disk type. Value
  /// [size] System disk size, unit: GB.
  InstanceSystemDisk({
    this.category,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'size': ?size,
    };
  }

  factory InstanceSystemDisk.fromMap(Map<String, dynamic> map) {
    return InstanceSystemDisk(
      category: map['category'] == null ? null : map['category'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

