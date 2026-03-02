// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlatformTypeEnumValue
class PlatformTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PlatformTypeEnumValue].
  /// [value] Property value
  PlatformTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return PlatformTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

