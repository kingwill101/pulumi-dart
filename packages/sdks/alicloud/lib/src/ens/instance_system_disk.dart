// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceSystemDisk {
  /// System disk type. Value
  /// - cloud_efficiency: Ultra cloud disk
  /// - cloud_ssd: Full Flash cloud disk
  /// - local_hdd: local hdd disk
  /// - local_ssd: local disk ssd.
  final pulumi.Input<String>? category;
  /// System disk size, unit: GB.
  final pulumi.Input<int>? size;

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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

