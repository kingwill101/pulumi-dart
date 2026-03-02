// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RRTypeEnumValue
class RRTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RRTypeEnumValue].
  /// [value] Property value
  RRTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RRTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return RRTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

