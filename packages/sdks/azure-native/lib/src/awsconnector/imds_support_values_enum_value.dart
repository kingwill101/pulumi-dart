// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImdsSupportValuesEnumValue
class ImdsSupportValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ImdsSupportValuesEnumValue].
  /// [value] Property value
  ImdsSupportValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImdsSupportValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return ImdsSupportValuesEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

