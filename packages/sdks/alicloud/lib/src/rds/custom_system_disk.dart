// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomSystemDisk {
  /// The cloud disk type of the system disk. Currently, only `cloud_essd`(ESSD cloud disk) is supported.
  final pulumi.Input<String>? category;

  /// System disk size, unit: GiB. Only ESSD PL1 is supported. Valid values range from 20 to 2048.
  final pulumi.Input<String>? size;

  /// Creates a new [CustomSystemDisk].
  /// [category] The cloud disk type of the system disk. Currently, only `cloud_essd`(ESSD cloud disk) is supported.
  /// [size] System disk size, unit: GiB. Only ESSD PL1 is supported. Valid values range from 20 to 2048.
  CustomSystemDisk({this.category, this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'category': ?category, 'size': ?size};
  }

  factory CustomSystemDisk.fromMap(Map<String, dynamic> map) {
    return CustomSystemDisk(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
