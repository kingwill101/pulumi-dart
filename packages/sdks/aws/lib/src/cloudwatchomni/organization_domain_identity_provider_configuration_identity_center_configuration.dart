// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration {
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> identityCenterInstanceArn;

  /// Creates a new [OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration].
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance.
  const OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration({
    required this.identityCenterInstanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterInstanceArn': identityCenterInstanceArn,
    };
  }

  factory OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration.fromMap(Map<String, dynamic> map) {
    return OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration(
      identityCenterInstanceArn: pulumi.Input.fromValue(map['identityCenterInstanceArn'] as String),
    );
  }
}
