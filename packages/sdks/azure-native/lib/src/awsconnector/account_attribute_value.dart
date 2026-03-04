// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccountAttributeValue
class AccountAttributeValue {
  /// &lt;p&gt;The value of the attribute.&lt;/p&gt;
  final pulumi.Input<String>? attributeValue;

  /// Creates a new [AccountAttributeValue].
  /// [attributeValue] &lt;p&gt;The value of the attribute.&lt;/p&gt;
  AccountAttributeValue({this.attributeValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attributeValue': ?attributeValue};
  }

  factory AccountAttributeValue.fromMap(Map<String, dynamic> map) {
    return AccountAttributeValue(
      attributeValue: (() {
        final guardedValue = map['attributeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
