// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccountAttributeValue
class AccountAttributeValueResponse {
  /// &lt;p&gt;The value of the attribute.&lt;/p&gt;
  final pulumi.Input<String>? attributeValue;

  /// Creates a new [AccountAttributeValueResponse].
  /// [attributeValue] &lt;p&gt;The value of the attribute.&lt;/p&gt;
  const AccountAttributeValueResponse({
    this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
    };
  }

  factory AccountAttributeValueResponse.fromMap(Map<String, dynamic> map) {
    return AccountAttributeValueResponse(
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
