// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComputeTypeEnumValue
class ComputeTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ComputeTypeEnumValue].
  /// [value] Property value
  ComputeTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComputeTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ComputeTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

