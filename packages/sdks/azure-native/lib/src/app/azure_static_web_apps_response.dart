// ignore_for_file: unused_element, unnecessary_cast

import 'azure_static_web_apps_registration_response.dart';

/// The configuration settings of the Azure Static Web Apps provider.
class AzureStaticWebAppsResponse {
  /// <code>false</code> if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the Azure Static Web Apps registration.
  final AzureStaticWebAppsRegistrationResponse? registration;

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
      'registration': ?registration == null ? null : registration!.toMap(),
    };
  }

  factory AzureStaticWebAppsResponse.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      registration: map['registration'] == null ? null : AzureStaticWebAppsRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

