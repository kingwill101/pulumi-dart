// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of business process identifier.
class BusinessProcessIdentifierResponse {
  /// The property name of the business process identifier.
  final pulumi.Input<String>? propertyName;
  /// The property type of the business process identifier.
  final pulumi.Input<String>? propertyType;

  /// Creates a new [BusinessProcessIdentifierResponse].
  /// [propertyName] The property name of the business process identifier.
  /// [propertyType] The property type of the business process identifier.
  BusinessProcessIdentifierResponse({
    this.propertyName,
    this.propertyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
      'propertyType': ?propertyType,
    };
  }

  factory BusinessProcessIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessIdentifierResponse(
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyType: (() { final guardedValue = map['propertyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

