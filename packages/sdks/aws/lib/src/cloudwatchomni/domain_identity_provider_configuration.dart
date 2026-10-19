// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity_provider_configuration_identity_center_configuration.dart';

class DomainIdentityProviderConfiguration {
  /// IAM Identity Center configuration. See below.
  final pulumi.Input<DomainIdentityProviderConfigurationIdentityCenterConfiguration> identityCenterConfiguration;

  /// Creates a new [DomainIdentityProviderConfiguration].
  /// [identityCenterConfiguration] IAM Identity Center configuration. See below.
  const DomainIdentityProviderConfiguration({
    required this.identityCenterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterConfiguration': pulumi.Input.mapInputValue<DomainIdentityProviderConfigurationIdentityCenterConfiguration, Map<String, dynamic>>(identityCenterConfiguration, (value) => value.toMap()),
    };
  }

  factory DomainIdentityProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainIdentityProviderConfiguration(
      identityCenterConfiguration: pulumi.Input.fromValue(DomainIdentityProviderConfigurationIdentityCenterConfiguration.fromMap((map['identityCenterConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
