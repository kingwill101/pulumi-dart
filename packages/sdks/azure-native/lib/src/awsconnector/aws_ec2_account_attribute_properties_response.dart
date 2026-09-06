// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_attribute_value_response.dart';

/// Definition of awsEc2AccountAttribute
class AwsEc2AccountAttributePropertiesResponse {
  /// &lt;p&gt;The name of the account attribute.&lt;/p&gt;
  final pulumi.Input<String?>? attributeName;
  /// &lt;p&gt;The values for the account attribute.&lt;/p&gt;
  final pulumi.Input<List<AccountAttributeValueResponse>?>? attributeValues;

  /// Creates a new [AwsEc2AccountAttributePropertiesResponse].
  /// [attributeName] &lt;p&gt;The name of the account attribute.&lt;/p&gt;
  /// [attributeValues] &lt;p&gt;The values for the account attribute.&lt;/p&gt;
  const AwsEc2AccountAttributePropertiesResponse({
    this.attributeName,
    this.attributeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeValues': ?pulumi.Input.mapOptionalInputValue<List<AccountAttributeValueResponse>, List<Map<String, dynamic>>>(attributeValues, (value) => pulumi.Input.encodeList<AccountAttributeValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2AccountAttributePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2AccountAttributePropertiesResponse(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeValues: (() { final guardedValue = map['attributeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountAttributeValueResponse>(guardedValue, (value) => AccountAttributeValueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
