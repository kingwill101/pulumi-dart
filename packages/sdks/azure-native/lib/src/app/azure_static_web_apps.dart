// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_static_web_apps_registration.dart';

/// The configuration settings of the Azure Static Web Apps provider.
class AzureStaticWebApps {
  /// &lt;code&gt;false&lt;/code&gt; if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool?>? enabled;
  /// The configuration settings of the Azure Static Web Apps registration.
  final pulumi.Input<AzureStaticWebAppsRegistration?>? registration;

  /// Creates a new [AzureStaticWebApps].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [registration] The configuration settings of the Azure Static Web Apps registration.
  const AzureStaticWebApps({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureStaticWebAppsRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
