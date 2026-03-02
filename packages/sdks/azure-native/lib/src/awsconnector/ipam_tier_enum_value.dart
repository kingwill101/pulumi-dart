// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamTierEnumValue
class IpamTierEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IpamTierEnumValue].
  /// [value] Property value
  IpamTierEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamTierEnumValue.fromMap(Map<String, dynamic> map) {
    return IpamTierEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

