// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../widget_config_access_settings/widget_config_access_settings.dart';
import '../widget_config_homepage_setting/widget_config_homepage_setting.dart';
import '../widget_config_ui_branding/widget_config_ui_branding.dart';
import '../widget_config_ui_settings/widget_config_ui_settings.dart';

/// The set of arguments for WidgetConfig.
class WidgetConfigArgs {
  /// Describes widget access settings.
  /// Structure is documented below.
  final Input<WidgetConfigAccessSettings>? accessSettings;

  /// The collection ID.
  final Input<String>? collectionId;

  /// The engine ID.
  final Input<String> engineId;

  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  final Input<WidgetConfigHomepageSetting>? homepageSetting;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Describes search widget UI branding settings, such as the widget title, logo,
  /// favicons, and colors.
  /// Structure is documented below.
  final Input<WidgetConfigUiBranding>? uiBranding;

  /// Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// Structure is documented below.
  final Input<WidgetConfigUiSettings>? uiSettings;

  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  final Input<String>? widgetConfigId;

  WidgetConfigArgs({
    this.accessSettings,
    this.collectionId,
    required this.engineId,
    this.homepageSetting,
    required this.location,
    this.project,
    this.uiBranding,
    this.uiSettings,
    this.widgetConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessSettingsValue = accessSettings;
    if (accessSettingsValue != null) {
      map['accessSettings'] = Input.mapOptionalInputValue<
          WidgetConfigAccessSettings,
          Map<String, dynamic>>(accessSettingsValue, (value) => value.toMap());
    }
    final collectionIdValue = collectionId;
    if (collectionIdValue != null) {
      map['collectionId'] = collectionIdValue;
    }
    map['engineId'] = engineId;
    final homepageSettingValue = homepageSetting;
    if (homepageSettingValue != null) {
      map['homepageSetting'] = Input.mapOptionalInputValue<
          WidgetConfigHomepageSetting,
          Map<String, dynamic>>(homepageSettingValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final uiBrandingValue = uiBranding;
    if (uiBrandingValue != null) {
      map['uiBranding'] = Input.mapOptionalInputValue<WidgetConfigUiBranding,
          Map<String, dynamic>>(uiBrandingValue, (value) => value.toMap());
    }
    final uiSettingsValue = uiSettings;
    if (uiSettingsValue != null) {
      map['uiSettings'] = Input.mapOptionalInputValue<WidgetConfigUiSettings,
          Map<String, dynamic>>(uiSettingsValue, (value) => value.toMap());
    }
    final widgetConfigIdValue = widgetConfigId;
    if (widgetConfigIdValue != null) {
      map['widgetConfigId'] = widgetConfigIdValue;
    }
    return map;
  }

  factory WidgetConfigArgs.fromMap(Map<String, dynamic> map) {
    return WidgetConfigArgs(
      accessSettings: Input.asOptionalInput<WidgetConfigAccessSettings>(
          map['accessSettings']),
      collectionId: Input.asOptionalInput<String>(map['collectionId']),
      engineId: Input.asInput<String>(map['engineId']),
      homepageSetting: Input.asOptionalInput<WidgetConfigHomepageSetting>(
          map['homepageSetting']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      uiBranding:
          Input.asOptionalInput<WidgetConfigUiBranding>(map['uiBranding']),
      uiSettings:
          Input.asOptionalInput<WidgetConfigUiSettings>(map['uiSettings']),
      widgetConfigId: Input.asOptionalInput<String>(map['widgetConfigId']),
    );
  }
}
