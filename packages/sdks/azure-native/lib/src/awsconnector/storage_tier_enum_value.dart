// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StorageTierEnumValue
class StorageTierEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StorageTierEnumValue].
  /// [value] Property value
  StorageTierEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StorageTierEnumValue.fromMap(Map<String, dynamic> map) {
    return StorageTierEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

