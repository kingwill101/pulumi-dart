// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_configuration.dart';

/// Authentication configuration information
class FhirServiceAuthenticationConfiguration {
  /// The audience url for the service
  final String? audience;
  /// The authority url for the service
  final String? authority;
  /// The array of identity provider configurations for SMART on FHIR authentication.
  final List<SmartIdentityProviderConfiguration>? smartIdentityProviders;
  /// If the SMART on FHIR proxy is enabled
  final bool? smartProxyEnabled;

  /// Creates a new [FhirServiceAuthenticationConfiguration].
  /// [audience] The audience url for the service
  /// [authority] The authority url for the service
  /// [smartIdentityProviders] The array of identity provider configurations for SMART on FHIR authentication.
  /// [smartProxyEnabled] If the SMART on FHIR proxy is enabled
  FhirServiceAuthenticationConfiguration({
    this.audience,
    this.authority,
    this.smartIdentityProviders,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'smartIdentityProviders': ?smartIdentityProviders == null ? null : pulumi.Input.encodeList<SmartIdentityProviderConfiguration, Map<String, dynamic>>(smartIdentityProviders!, (value) => value.toMap()),
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory FhirServiceAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceAuthenticationConfiguration(
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      smartIdentityProviders: map['smartIdentityProviders'] == null ? null : pulumi.Input.decodeList<SmartIdentityProviderConfiguration>(map['smartIdentityProviders'], (value) => SmartIdentityProviderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      smartProxyEnabled: map['smartProxyEnabled'] == null ? null : map['smartProxyEnabled'] as bool,
    );
  }
}

