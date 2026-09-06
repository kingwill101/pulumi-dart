// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DefaultActionEnumValue
class DefaultActionEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [DefaultActionEnumValue].
  /// [value] Property value
  const DefaultActionEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DefaultActionEnumValue.fromMap(Map<String, dynamic> map) {
    return DefaultActionEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
