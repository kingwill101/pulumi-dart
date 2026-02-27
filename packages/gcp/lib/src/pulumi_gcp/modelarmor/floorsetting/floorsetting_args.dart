// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../floorsetting_ai_platform_floor_setting/floorsetting_ai_platform_floor_setting.dart';
import '../floorsetting_filter_config/floorsetting_filter_config.dart';
import '../floorsetting_floor_setting_metadata/floorsetting_floor_setting_metadata.dart';
import '../floorsetting_google_mcp_server_floor_setting/floorsetting_google_mcp_server_floor_setting.dart';

/// The set of arguments for Floorsetting.
class FloorsettingArgs {
  /// AI Platform floor setting.
  /// Structure is documented below.
  final Input<FloorsettingAiPlatformFloorSetting>? aiPlatformFloorSetting;

  /// Floor Settings enforcement status.
  final Input<bool>? enableFloorSettingEnforcement;

  /// Filters configuration.
  /// Structure is documented below.
  final Input<FloorsettingFilterConfig> filterConfig;

  /// Metadata to enable multi language detection via floor setting.
  /// Structure is documented below.
  final Input<FloorsettingFloorSettingMetadata>? floorSettingMetadata;

  /// Google MCP Server floor setting.
  /// Structure is documented below.
  final Input<FloorsettingGoogleMcpServerFloorSetting>?
      googleMcpServerFloorSetting;

  /// List of integrated services for which the floor setting is applicable.
  final Input<List<String>>? integratedServices;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Will be any one of these:
  /// * `projects/{project}`
  /// * `folders/{folder}`
  /// * `organizations/{organizationId}`
  final Input<String> parent;

  FloorsettingArgs({
    this.aiPlatformFloorSetting,
    this.enableFloorSettingEnforcement,
    required this.filterConfig,
    this.floorSettingMetadata,
    this.googleMcpServerFloorSetting,
    this.integratedServices,
    required this.location,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aiPlatformFloorSettingValue = aiPlatformFloorSetting;
    if (aiPlatformFloorSettingValue != null) {
      map['aiPlatformFloorSetting'] = Input.mapOptionalInputValue<
              FloorsettingAiPlatformFloorSetting, Map<String, dynamic>>(
          aiPlatformFloorSettingValue, (value) => value.toMap());
    }
    final enableFloorSettingEnforcementValue = enableFloorSettingEnforcement;
    if (enableFloorSettingEnforcementValue != null) {
      map['enableFloorSettingEnforcement'] = enableFloorSettingEnforcementValue;
    }
    map['filterConfig'] =
        Input.mapInputValue<FloorsettingFilterConfig, Map<String, dynamic>>(
            filterConfig, (value) => value.toMap());
    final floorSettingMetadataValue = floorSettingMetadata;
    if (floorSettingMetadataValue != null) {
      map['floorSettingMetadata'] = Input.mapOptionalInputValue<
              FloorsettingFloorSettingMetadata, Map<String, dynamic>>(
          floorSettingMetadataValue, (value) => value.toMap());
    }
    final googleMcpServerFloorSettingValue = googleMcpServerFloorSetting;
    if (googleMcpServerFloorSettingValue != null) {
      map['googleMcpServerFloorSetting'] = Input.mapOptionalInputValue<
              FloorsettingGoogleMcpServerFloorSetting, Map<String, dynamic>>(
          googleMcpServerFloorSettingValue, (value) => value.toMap());
    }
    final integratedServicesValue = integratedServices;
    if (integratedServicesValue != null) {
      map['integratedServices'] = integratedServicesValue;
    }
    map['location'] = location;
    map['parent'] = parent;
    return map;
  }

  factory FloorsettingArgs.fromMap(Map<String, dynamic> map) {
    return FloorsettingArgs(
      aiPlatformFloorSetting:
          Input.asOptionalInput<FloorsettingAiPlatformFloorSetting>(
              map['aiPlatformFloorSetting']),
      enableFloorSettingEnforcement:
          Input.asOptionalInput<bool>(map['enableFloorSettingEnforcement']),
      filterConfig:
          Input.asInput<FloorsettingFilterConfig>(map['filterConfig']),
      floorSettingMetadata:
          Input.asOptionalInput<FloorsettingFloorSettingMetadata>(
              map['floorSettingMetadata']),
      googleMcpServerFloorSetting:
          Input.asOptionalInput<FloorsettingGoogleMcpServerFloorSetting>(
              map['googleMcpServerFloorSetting']),
      integratedServices:
          Input.asOptionalInput<List<String>>(map['integratedServices']),
      location: Input.asInput<String>(map['location']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
