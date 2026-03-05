// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_application_response.dart';

/// An object to configure an identity provider for use with SMART on FHIR authentication.
class SmartIdentityProviderConfigurationResponse {
  /// The array of identity provider applications for SMART on FHIR authentication.
  final pulumi.Input<List<SmartIdentityProviderApplicationResponse>>? applications;
  /// The identity provider token authority also known as the token issuing authority.
  final pulumi.Input<String>? authority;

  /// Creates a new [SmartIdentityProviderConfigurationResponse].
  /// [applications] The array of identity provider applications for SMART on FHIR authentication.
  /// [authority] The identity provider token authority also known as the token issuing authority.
  SmartIdentityProviderConfigurationResponse({
    this.applications,
    this.authority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?pulumi.Input.mapOptionalInputValue<List<SmartIdentityProviderApplicationResponse>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<SmartIdentityProviderApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authority': ?authority,
    };
  }

  factory SmartIdentityProviderConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SmartIdentityProviderConfigurationResponse(
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SmartIdentityProviderApplicationResponse>(guardedValue, (value) => SmartIdentityProviderApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

