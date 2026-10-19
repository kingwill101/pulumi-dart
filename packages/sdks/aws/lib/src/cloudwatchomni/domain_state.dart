// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity_provider_configuration.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// ARN of the domain.
  final pulumi.Input<String?>? arn;
  /// Additional endpoint URLs derived from the domain name.
  final pulumi.Input<List<String>?>? customEndpointUrls;
  /// HTTPS endpoint URL for accessing the domain.
  final pulumi.Input<String?>? domainEndpointUrl;
  /// Unique identifier of the domain.
  final pulumi.Input<String?>? domainId;
  /// ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  final pulumi.Input<String?>? identityCenterApplicationArn;
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  final pulumi.Input<DomainIdentityProviderConfiguration?>? identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  final pulumi.Input<List<String>?>? identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DomainState].
  /// [arn] ARN of the domain.
  /// [customEndpointUrls] Additional endpoint URLs derived from the domain name.
  /// [domainEndpointUrl] HTTPS endpoint URL for accessing the domain.
  /// [domainId] Unique identifier of the domain.
  /// [identityCenterApplicationArn] ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  /// [identityProviderConfiguration] Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  /// [identityProviders] Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  /// [name] Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainState({
    this.arn,
    this.customEndpointUrls,
    this.domainEndpointUrl,
    this.domainId,
    this.identityCenterApplicationArn,
    this.identityProviderConfiguration,
    this.identityProviders,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customEndpointUrls': ?customEndpointUrls,
      'domainEndpointUrl': ?domainEndpointUrl,
      'domainId': ?domainId,
      'identityCenterApplicationArn': ?identityCenterApplicationArn,
      'identityProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<DomainIdentityProviderConfiguration, Map<String, dynamic>>(identityProviderConfiguration, (value) => value.toMap()),
      'identityProviders': ?identityProviders,
      'name': ?name,
      'region': ?region,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEndpointUrls: (() { final guardedValue = map['customEndpointUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domainEndpointUrl: (() { final guardedValue = map['domainEndpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterApplicationArn: (() { final guardedValue = map['identityCenterApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProviderConfiguration: (() { final guardedValue = map['identityProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviders: (() { final guardedValue = map['identityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
