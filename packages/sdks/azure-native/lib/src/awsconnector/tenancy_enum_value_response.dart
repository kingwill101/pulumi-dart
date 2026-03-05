// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TenancyEnumValue
class TenancyEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TenancyEnumValueResponse].
  /// [value] Property value
  TenancyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TenancyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TenancyEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

