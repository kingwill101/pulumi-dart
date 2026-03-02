// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PropertyValueTypeEnumValue
class PropertyValueTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PropertyValueTypeEnumValueResponse].
  /// [value] Property value
  PropertyValueTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PropertyValueTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PropertyValueTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

