// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_attribute_value.dart';

/// Definition of awsEc2AccountAttribute
class AwsEc2AccountAttributeProperties {
  /// &lt;p&gt;The name of the account attribute.&lt;/p&gt;
  final pulumi.Input<String>? attributeName;
  /// &lt;p&gt;The values for the account attribute.&lt;/p&gt;
  final pulumi.Input<List<AccountAttributeValue>>? attributeValues;

  /// Creates a new [AwsEc2AccountAttributeProperties].
  /// [attributeName] &lt;p&gt;The name of the account attribute.&lt;/p&gt;
  /// [attributeValues] &lt;p&gt;The values for the account attribute.&lt;/p&gt;
  AwsEc2AccountAttributeProperties({
    this.attributeName,
    this.attributeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeValues': ?pulumi.Input.mapOptionalInputValue<List<AccountAttributeValue>, List<Map<String, dynamic>>>(attributeValues, (value) => pulumi.Input.encodeList<AccountAttributeValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2AccountAttributeProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2AccountAttributeProperties(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeValues: (() { final guardedValue = map['attributeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountAttributeValue>(guardedValue, (value) => AccountAttributeValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

