// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostnameTypeEnumValue
class HostnameTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [HostnameTypeEnumValueResponse].
  /// [value] Property value
  const HostnameTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HostnameTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return HostnameTypeEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
