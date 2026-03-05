// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomPropertyPropertyValue {
  /// The value of an attribute.
  final pulumi.Input<String>? propertyValue;
  /// The value of an attribute id.
  final pulumi.Input<String>? propertyValueId;

  /// Creates a new [CustomPropertyPropertyValue].
  /// [propertyValue] The value of an attribute.
  /// [propertyValueId] The value of an attribute id.
  CustomPropertyPropertyValue({
    this.propertyValue,
    this.propertyValueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyValue': ?propertyValue,
      'propertyValueId': ?propertyValueId,
    };
  }

  factory CustomPropertyPropertyValue.fromMap(Map<String, dynamic> map) {
    return CustomPropertyPropertyValue(
      propertyValue: (() { final guardedValue = map['propertyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyValueId: (() { final guardedValue = map['propertyValueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

