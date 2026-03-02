// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TpmSupportValuesEnumValue
class TpmSupportValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TpmSupportValuesEnumValue].
  /// [value] Property value
  TpmSupportValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TpmSupportValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return TpmSupportValuesEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

