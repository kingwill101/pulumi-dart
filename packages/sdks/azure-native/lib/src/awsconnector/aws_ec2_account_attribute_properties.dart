// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_attribute_value.dart';

/// Definition of awsEc2AccountAttribute
class AwsEc2AccountAttributeProperties {
  /// <p>The name of the account attribute.</p>
  final pulumi.Input<String>? attributeName;
  /// <p>The values for the account attribute.</p>
  final pulumi.Input<List<AccountAttributeValue>>? attributeValues;

  /// Creates a new [AwsEc2AccountAttributeProperties].
  /// [attributeName] <p>The name of the account attribute.</p>
  /// [attributeValues] <p>The values for the account attribute.</p>
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
      attributeName: map['attributeName'] == null ? null : (map['attributeName']! as String).input(),
      attributeValues: map['attributeValues'] == null ? null : (pulumi.Input.decodeList<AccountAttributeValue>(map['attributeValues']!, (value) => AccountAttributeValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

