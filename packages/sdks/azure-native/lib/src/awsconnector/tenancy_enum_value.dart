// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TenancyEnumValue
class TenancyEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TenancyEnumValue].
  /// [value] Property value
  const TenancyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TenancyEnumValue.fromMap(Map<String, dynamic> map) {
    return TenancyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
