// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VirtualizationTypeEnumValue
class VirtualizationTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [VirtualizationTypeEnumValueResponse].
  /// [value] Property value
  VirtualizationTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory VirtualizationTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return VirtualizationTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

