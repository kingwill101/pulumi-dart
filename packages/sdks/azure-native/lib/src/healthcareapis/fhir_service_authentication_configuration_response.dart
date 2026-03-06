// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_configuration_response.dart';

/// Authentication configuration information
class FhirServiceAuthenticationConfigurationResponse {
  /// The audience url for the service
  final pulumi.Input<String>? audience;
  /// The authority url for the service
  final pulumi.Input<String>? authority;
  /// The array of identity provider configurations for SMART on FHIR authentication.
  final pulumi.Input<List<SmartIdentityProviderConfigurationResponse>>? smartIdentityProviders;
  /// If the SMART on FHIR proxy is enabled
  final pulumi.Input<bool>? smartProxyEnabled;

  /// Creates a new [FhirServiceAuthenticationConfigurationResponse].
  /// [audience] The audience url for the service
  /// [authority] The authority url for the service
  /// [smartIdentityProviders] The array of identity provider configurations for SMART on FHIR authentication.
  /// [smartProxyEnabled] If the SMART on FHIR proxy is enabled
  const FhirServiceAuthenticationConfigurationResponse({
    this.audience,
    this.authority,
    this.smartIdentityProviders,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'smartIdentityProviders': ?pulumi.Input.mapOptionalInputValue<List<SmartIdentityProviderConfigurationResponse>, List<Map<String, dynamic>>>(smartIdentityProviders, (value) => pulumi.Input.encodeList<SmartIdentityProviderConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory FhirServiceAuthenticationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FhirServiceAuthenticationConfigurationResponse(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smartIdentityProviders: (() { final guardedValue = map['smartIdentityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SmartIdentityProviderConfigurationResponse>(guardedValue, (value) => SmartIdentityProviderConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      smartProxyEnabled: (() { final guardedValue = map['smartProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

