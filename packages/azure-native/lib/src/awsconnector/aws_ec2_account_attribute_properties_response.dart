// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_attribute_value_response.dart';

/// Definition of awsEc2AccountAttribute
class AwsEc2AccountAttributePropertiesResponse {
  /// <p>The name of the account attribute.</p>
  final String? attributeName;
  /// <p>The values for the account attribute.</p>
  final List<AccountAttributeValueResponse>? attributeValues;

  /// Creates a new [AwsEc2AccountAttributePropertiesResponse].
  /// [attributeName] <p>The name of the account attribute.</p>
  /// [attributeValues] <p>The values for the account attribute.</p>
  AwsEc2AccountAttributePropertiesResponse({
    this.attributeName,
    this.attributeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeValues': ?attributeValues == null ? null : pulumi.Input.encodeList<AccountAttributeValueResponse, Map<String, dynamic>>(attributeValues!, (value) => value.toMap()),
    };
  }

  factory AwsEc2AccountAttributePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2AccountAttributePropertiesResponse(
      attributeName: map['attributeName'] == null ? null : map['attributeName'] as String,
      attributeValues: map['attributeValues'] == null ? null : pulumi.Input.decodeList<AccountAttributeValueResponse>(map['attributeValues'], (value) => AccountAttributeValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

