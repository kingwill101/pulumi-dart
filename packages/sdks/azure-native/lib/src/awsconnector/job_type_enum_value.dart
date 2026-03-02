// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of JobTypeEnumValue
class JobTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [JobTypeEnumValue].
  /// [value] Property value
  JobTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return JobTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

