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
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

