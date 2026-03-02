// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamStateEnumValue
class IpamStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IpamStateEnumValueResponse].
  /// [value] Property value
  IpamStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IpamStateEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

