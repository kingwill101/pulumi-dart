// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIdentityProviderConfigurationIdentityCenterConfiguration {
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> identityCenterInstanceArn;

  /// Creates a new [DomainIdentityProviderConfigurationIdentityCenterConfiguration].
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance.
  const DomainIdentityProviderConfigurationIdentityCenterConfiguration({
    required this.identityCenterInstanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterInstanceArn': identityCenterInstanceArn,
    };
  }

  factory DomainIdentityProviderConfigurationIdentityCenterConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainIdentityProviderConfigurationIdentityCenterConfiguration(
      identityCenterInstanceArn: pulumi.Input.fromValue(map['identityCenterInstanceArn'] as String),
    );
  }
}
