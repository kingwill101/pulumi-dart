// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../settings_access_settings/settings_access_settings.dart';
import '../settings_application_settings/settings_application_settings.dart';

/// The set of arguments for Settings.
class SettingsArgs {
  /// Top level wrapper for all access related setting in IAP.
  /// Structure is documented below.
  final Input<SettingsAccessSettings>? accessSettings;

  /// Top level wrapper for all application related settings in IAP.
  /// Structure is documented below.
  final Input<SettingsApplicationSettings>? applicationSettings;

  /// The resource name of the IAP protected resource. Name can have below resources:
  /// * organizations/{organization_id}
  /// * folders/{folder_id}
  /// * projects/{project_id}
  /// * projects/{project_id}/iap_web
  /// * projects/{project_id}/iap_web/compute
  /// * projects/{project_id}/iap_web/compute-{region}
  /// * projects/{project_id}/iap_web/compute/services/{service_id}
  /// * projects/{project_id}/iap_web/compute-{region}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}/version/{version_id}
  final Input<String>? name;

  SettingsArgs({
    this.accessSettings,
    this.applicationSettings,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessSettingsValue = accessSettings;
    if (accessSettingsValue != null) {
      map['accessSettings'] = Input.mapOptionalInputValue<
          SettingsAccessSettings,
          Map<String, dynamic>>(accessSettingsValue, (value) => value.toMap());
    }
    final applicationSettingsValue = applicationSettings;
    if (applicationSettingsValue != null) {
      map['applicationSettings'] = Input.mapOptionalInputValue<
              SettingsApplicationSettings, Map<String, dynamic>>(
          applicationSettingsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      accessSettings:
          Input.asOptionalInput<SettingsAccessSettings>(map['accessSettings']),
      applicationSettings: Input.asOptionalInput<SettingsApplicationSettings>(
          map['applicationSettings']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
