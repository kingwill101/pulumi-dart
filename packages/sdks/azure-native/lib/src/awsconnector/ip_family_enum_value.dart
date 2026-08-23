// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpFamilyEnumValue
class IpFamilyEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IpFamilyEnumValue].
  /// [value] Property value
  const IpFamilyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpFamilyEnumValue.fromMap(Map<String, dynamic> map) {
    return IpFamilyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
