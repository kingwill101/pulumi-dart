// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AScriptExtAttribute {
  /// Key to extend attribute
  final pulumi.Input<String>? attributeKey;

  /// The value of the extended attribute
  final pulumi.Input<String>? attributeValue;

  /// Creates a new [AScriptExtAttribute].
  /// [attributeKey] Key to extend attribute
  /// [attributeValue] The value of the extended attribute
  AScriptExtAttribute({this.attributeKey, this.attributeValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeKey': ?attributeKey,
      'attributeValue': ?attributeValue,
    };
  }

  factory AScriptExtAttribute.fromMap(Map<String, dynamic> map) {
    return AScriptExtAttribute(
      attributeKey: (() {
        final guardedValue = map['attributeKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attributeValue: (() {
        final guardedValue = map['attributeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
