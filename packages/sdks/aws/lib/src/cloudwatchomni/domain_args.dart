// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity_provider_configuration.dart';

/// {@template pulumi_cloudwatchomni_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_domain_domain_args_doc}
class DomainArgs {
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  final pulumi.Input<DomainIdentityProviderConfiguration?>? identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  final pulumi.Input<List<String>> identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DomainArgs].
  /// [identityProviderConfiguration] Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  /// [identityProviders] Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  /// [name] Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainArgs({
    this.identityProviderConfiguration,
    required this.identityProviders,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<DomainIdentityProviderConfiguration, Map<String, dynamic>>(identityProviderConfiguration, (value) => value.toMap()),
      'identityProviders': identityProviders,
      'name': ?name,
      'region': ?region,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      identityProviderConfiguration: (() { final guardedValue = map['identityProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviders: pulumi.Input.fromValue((map['identityProviders'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
