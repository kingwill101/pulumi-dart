// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_static_web_apps_registration.dart';

/// The configuration settings of the Azure Static Web Apps provider.
class AzureStaticWebApps {
  /// <code>false</code> if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the Azure Static Web Apps registration.
  final pulumi.Input<AzureStaticWebAppsRegistration>? registration;

  /// Creates a new [AzureStaticWebApps].
  /// [enabled] <code>false</code> if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [registration] The configuration settings of the Azure Static Web Apps registration.
  AzureStaticWebApps({
    this.enabled,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration': ?pulumi.Input.mapOptionalInputValue<AzureStaticWebAppsRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory AzureStaticWebApps.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebApps(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      registration: map['registration'] == null ? null : (AzureStaticWebAppsRegistration.fromMap((map['registration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

