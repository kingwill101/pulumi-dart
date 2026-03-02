// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CacheTypeEnumValue
class CacheTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [CacheTypeEnumValue].
  /// [value] Property value
  CacheTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CacheTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return CacheTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

