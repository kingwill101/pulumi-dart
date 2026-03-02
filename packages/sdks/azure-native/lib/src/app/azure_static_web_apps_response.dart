// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_static_web_apps_registration_response.dart';

/// The configuration settings of the Azure Static Web Apps provider.
class AzureStaticWebAppsResponse {
  /// <code>false</code> if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the Azure Static Web Apps registration.
  final pulumi.Input<AzureStaticWebAppsRegistrationResponse>? registration;

  /// Creates a new [AzureStaticWebAppsResponse].
  /// [enabled] <code>false</code> if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [registration] The configuration settings of the Azure Static Web Apps registration.
  AzureStaticWebAppsResponse({
    this.enabled,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration': ?pulumi.Input.mapOptionalInputValue<AzureStaticWebAppsRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory AzureStaticWebAppsResponse.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      registration: map['registration'] == null ? null : (AzureStaticWebAppsRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

