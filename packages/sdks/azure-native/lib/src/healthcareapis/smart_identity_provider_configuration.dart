// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smart_identity_provider_application.dart';

/// An object to configure an identity provider for use with SMART on FHIR authentication.
class SmartIdentityProviderConfiguration {
  /// The array of identity provider applications for SMART on FHIR authentication.
  final pulumi.Input<List<SmartIdentityProviderApplication>>? applications;

  /// The identity provider token authority also known as the token issuing authority.
  final pulumi.Input<String>? authority;

  /// Creates a new [SmartIdentityProviderConfiguration].
  /// [applications] The array of identity provider applications for SMART on FHIR authentication.
  /// [authority] The identity provider token authority also known as the token issuing authority.
  SmartIdentityProviderConfiguration({this.applications, this.authority});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications':
          ?pulumi.Input.mapOptionalInputValue<
            List<SmartIdentityProviderApplication>,
            List<Map<String, dynamic>>
          >(
            applications,
            (value) =>
                pulumi.Input.encodeList<
                  SmartIdentityProviderApplication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'authority': ?authority,
    };
  }

  factory SmartIdentityProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return SmartIdentityProviderConfiguration(
      applications: (() {
        final guardedValue = map['applications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SmartIdentityProviderApplication>(
            guardedValue,
            (value) => SmartIdentityProviderApplication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      authority: (() {
        final guardedValue = map['authority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
