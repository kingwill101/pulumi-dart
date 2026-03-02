// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_configuration.dart';

/// Authentication configuration information
class FhirServiceAuthenticationConfiguration {
  /// The audience url for the service
  final pulumi.Input<String>? audience;
  /// The authority url for the service
  final pulumi.Input<String>? authority;
  /// The array of identity provider configurations for SMART on FHIR authentication.
  final pulumi.Input<List<SmartIdentityProviderConfiguration>>? smartIdentityProviders;
  /// If the SMART on FHIR proxy is enabled
  final pulumi.Input<bool>? smartProxyEnabled;

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
      'smartIdentityProviders': ?pulumi.Input.mapOptionalInputValue<List<SmartIdentityProviderConfiguration>, List<Map<String, dynamic>>>(smartIdentityProviders, (value) => pulumi.Input.encodeList<SmartIdentityProviderConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory FhirServiceAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceAuthenticationConfiguration(
      audience: map['audience'] == null ? null : (map['audience']! as String).input(),
      authority: map['authority'] == null ? null : (map['authority']! as String).input(),
      smartIdentityProviders: map['smartIdentityProviders'] == null ? null : (pulumi.Input.decodeList<SmartIdentityProviderConfiguration>(map['smartIdentityProviders']!, (value) => SmartIdentityProviderConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      smartProxyEnabled: map['smartProxyEnabled'] == null ? null : (map['smartProxyEnabled']! as bool).input(),
    );
  }
}

