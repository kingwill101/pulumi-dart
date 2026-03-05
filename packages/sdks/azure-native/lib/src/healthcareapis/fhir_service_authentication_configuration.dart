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
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smartIdentityProviders: (() { final guardedValue = map['smartIdentityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SmartIdentityProviderConfiguration>(guardedValue, (value) => SmartIdentityProviderConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      smartProxyEnabled: (() { final guardedValue = map['smartProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

