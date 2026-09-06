// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamTierEnumValue
class IpamTierEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [IpamTierEnumValue].
  /// [value] Property value
  const IpamTierEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamTierEnumValue.fromMap(Map<String, dynamic> map) {
    return IpamTierEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
