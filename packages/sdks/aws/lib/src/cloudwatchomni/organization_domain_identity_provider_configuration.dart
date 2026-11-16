// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_domain_identity_provider_configuration_identity_center_configuration.dart';

class OrganizationDomainIdentityProviderConfiguration {
  /// IAM Identity Center configuration. See below.
  final pulumi.Input<OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration> identityCenterConfiguration;

  /// Creates a new [OrganizationDomainIdentityProviderConfiguration].
  /// [identityCenterConfiguration] IAM Identity Center configuration. See below.
  const OrganizationDomainIdentityProviderConfiguration({
    required this.identityCenterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterConfiguration': pulumi.Input.mapInputValue<OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration, Map<String, dynamic>>(identityCenterConfiguration, (value) => value.toMap()),
    };
  }

  factory OrganizationDomainIdentityProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return OrganizationDomainIdentityProviderConfiguration(
      identityCenterConfiguration: pulumi.Input.fromValue(OrganizationDomainIdentityProviderConfigurationIdentityCenterConfiguration.fromMap((map['identityCenterConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
