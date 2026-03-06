// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InitiatedByEnumValue
class InitiatedByEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InitiatedByEnumValue].
  /// [value] Property value
  const InitiatedByEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InitiatedByEnumValue.fromMap(Map<String, dynamic> map) {
    return InitiatedByEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

