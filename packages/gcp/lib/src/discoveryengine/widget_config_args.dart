// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_access_settings.dart';
import 'widget_config_homepage_setting.dart';
import 'widget_config_ui_branding.dart';
import 'widget_config_ui_settings.dart';

/// {@template pulumi_discoveryengine_widget_config_widget_config_args_doc}
/// The set of arguments for WidgetConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_widget_config_widget_config_args_doc}
class WidgetConfigArgs {
  /// Describes widget access settings.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigAccessSettings>? accessSettings;

  /// The collection ID.
  final pulumi.Input<String>? collectionId;

  /// The engine ID.
  final pulumi.Input<String> engineId;

  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigHomepageSetting>? homepageSetting;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Describes search widget UI branding settings, such as the widget title, logo,
  /// favicons, and colors.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiBranding>? uiBranding;

  /// Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// Structure is documented below.
  final pulumi.Input<WidgetConfigUiSettings>? uiSettings;

  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  final pulumi.Input<String>? widgetConfigId;

  /// Creates a new [WidgetConfigArgs].
  /// [accessSettings] Describes widget access settings.
  /// [collectionId] The collection ID.
  /// [engineId] The engine ID.
  /// [homepageSetting] Describes the homepage setting of the widget. It includes all homepage related settings
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [uiBranding] Describes search widget UI branding settings, such as the widget title, logo,
  /// [uiSettings] Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// [widgetConfigId] The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  WidgetConfigArgs({
    WidgetConfigAccessSettings? accessSettings,
    String? collectionId,
    required String engineId,
    WidgetConfigHomepageSetting? homepageSetting,
    required String location,
    String? project,
    WidgetConfigUiBranding? uiBranding,
    WidgetConfigUiSettings? uiSettings,
    String? widgetConfigId,
  })  : accessSettings =
            pulumi.Input.asOptionalInput<WidgetConfigAccessSettings>(
                accessSettings),
        collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
        engineId = pulumi.Input.asInput<String>(engineId),
        homepageSetting =
            pulumi.Input.asOptionalInput<WidgetConfigHomepageSetting>(
                homepageSetting),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        uiBranding =
            pulumi.Input.asOptionalInput<WidgetConfigUiBranding>(uiBranding),
        uiSettings =
            pulumi.Input.asOptionalInput<WidgetConfigUiSettings>(uiSettings),
        widgetConfigId = pulumi.Input.asOptionalInput<String>(widgetConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessSettingsValue = accessSettings;
    if (accessSettingsValue != null) {
      map['accessSettings'] = pulumi.Input.mapOptionalInputValue<
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
      map['homepageSetting'] = pulumi.Input.mapOptionalInputValue<
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
      map['uiBranding'] = pulumi.Input.mapOptionalInputValue<
          WidgetConfigUiBranding,
          Map<String, dynamic>>(uiBrandingValue, (value) => value.toMap());
    }
    final uiSettingsValue = uiSettings;
    if (uiSettingsValue != null) {
      map['uiSettings'] = pulumi.Input.mapOptionalInputValue<
          WidgetConfigUiSettings,
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
      accessSettings: map['accessSettings'] == null
          ? null
          : WidgetConfigAccessSettings.fromMap(
              (map['accessSettings'] as Map).cast<String, dynamic>()),
      collectionId:
          map['collectionId'] == null ? null : map['collectionId'] as String,
      engineId: map['engineId'] as String,
      homepageSetting: map['homepageSetting'] == null
          ? null
          : WidgetConfigHomepageSetting.fromMap(
              (map['homepageSetting'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      uiBranding: map['uiBranding'] == null
          ? null
          : WidgetConfigUiBranding.fromMap(
              (map['uiBranding'] as Map).cast<String, dynamic>()),
      uiSettings: map['uiSettings'] == null
          ? null
          : WidgetConfigUiSettings.fromMap(
              (map['uiSettings'] as Map).cast<String, dynamic>()),
      widgetConfigId: map['widgetConfigId'] == null
          ? null
          : map['widgetConfigId'] as String,
    );
  }
}
