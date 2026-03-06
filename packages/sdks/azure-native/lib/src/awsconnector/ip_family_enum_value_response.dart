// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpFamilyEnumValue
class IpFamilyEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IpFamilyEnumValueResponse].
  /// [value] Property value
  const IpFamilyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpFamilyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IpFamilyEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

