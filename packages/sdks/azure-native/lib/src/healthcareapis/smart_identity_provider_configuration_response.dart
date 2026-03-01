// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_application_response.dart';

/// An object to configure an identity provider for use with SMART on FHIR authentication.
class SmartIdentityProviderConfigurationResponse {
  /// The array of identity provider applications for SMART on FHIR authentication.
  final List<SmartIdentityProviderApplicationResponse>? applications;
  /// The identity provider token authority also known as the token issuing authority.
  final String? authority;

  /// Creates a new [SmartIdentityProviderConfigurationResponse].
  /// [applications] The array of identity provider applications for SMART on FHIR authentication.
  /// [authority] The identity provider token authority also known as the token issuing authority.
  SmartIdentityProviderConfigurationResponse({
    this.applications,
    this.authority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?applications == null ? null : pulumi.Input.encodeList<SmartIdentityProviderApplicationResponse, Map<String, dynamic>>(applications!, (value) => value.toMap()),
      'authority': ?authority,
    };
  }

  factory SmartIdentityProviderConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SmartIdentityProviderConfigurationResponse(
      applications: map['applications'] == null ? null : pulumi.Input.decodeList<SmartIdentityProviderApplicationResponse>(map['applications'], (value) => SmartIdentityProviderApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
      authority: map['authority'] == null ? null : map['authority'] as String,
    );
  }
}

