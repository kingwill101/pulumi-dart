// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProductCodeValuesEnumValue
class ProductCodeValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ProductCodeValuesEnumValueResponse].
  /// [value] Property value
  ProductCodeValuesEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ProductCodeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ProductCodeValuesEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
