// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HttpTokensStateEnumValue
class HttpTokensStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [HttpTokensStateEnumValue].
  /// [value] Property value
  const HttpTokensStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HttpTokensStateEnumValue.fromMap(Map<String, dynamic> map) {
    return HttpTokensStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
