// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpFamilyEnumValue
class IpFamilyEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IpFamilyEnumValueResponse].
  /// [value] Property value
  IpFamilyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpFamilyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IpFamilyEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

