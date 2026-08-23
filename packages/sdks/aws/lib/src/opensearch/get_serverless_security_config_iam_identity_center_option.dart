// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessSecurityConfigIamIdentityCenterOption {
  /// Group attribute for this SAML integration.
  final pulumi.Input<String> groupAttribute;
  /// Amazon Resource Name (ARN) of the IAM Identity Center instance used to integrate with OpenSearch Serverless.
  final pulumi.Input<String> instanceArn;
  /// User attribute for this SAML integration.
  final pulumi.Input<String> userAttribute;

  /// Creates a new [GetServerlessSecurityConfigIamIdentityCenterOption].
  /// [groupAttribute] Group attribute for this SAML integration.
  /// [instanceArn] Amazon Resource Name (ARN) of the IAM Identity Center instance used to integrate with OpenSearch Serverless.
  /// [userAttribute] User attribute for this SAML integration.
  const GetServerlessSecurityConfigIamIdentityCenterOption({
    required this.groupAttribute,
    required this.instanceArn,
    required this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': groupAttribute,
      'instanceArn': instanceArn,
      'userAttribute': userAttribute,
    };
  }

  factory GetServerlessSecurityConfigIamIdentityCenterOption.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigIamIdentityCenterOption(
      groupAttribute: pulumi.Input.fromValue(map['groupAttribute'] as String),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      userAttribute: pulumi.Input.fromValue(map['userAttribute'] as String),
    );
  }
}
