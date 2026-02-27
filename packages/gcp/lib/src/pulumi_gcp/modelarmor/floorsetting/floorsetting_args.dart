// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../floorsetting_ai_platform_floor_setting/floorsetting_ai_platform_floor_setting.dart';
import '../floorsetting_filter_config/floorsetting_filter_config.dart';
import '../floorsetting_floor_setting_metadata/floorsetting_floor_setting_metadata.dart';
import '../floorsetting_google_mcp_server_floor_setting/floorsetting_google_mcp_server_floor_setting.dart';

/// The set of arguments for Floorsetting.
class FloorsettingArgs {
  /// AI Platform floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingAiPlatformFloorSetting>?
      aiPlatformFloorSetting;

  /// Floor Settings enforcement status.
  final pulumi.Input<bool>? enableFloorSettingEnforcement;

  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFilterConfig> filterConfig;

  /// Metadata to enable multi language detection via floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingFloorSettingMetadata>? floorSettingMetadata;

  /// Google MCP Server floor setting.
  /// Structure is documented below.
  final pulumi.Input<FloorsettingGoogleMcpServerFloorSetting>?
      googleMcpServerFloorSetting;

  /// List of integrated services for which the floor setting is applicable.
  final pulumi.Input<List<String>>? integratedServices;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Will be any one of these:
  /// * `projects/{project}`
  /// * `folders/{folder}`
  /// * `organizations/{organizationId}`
  final pulumi.Input<String> parent;

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
      map['aiPlatformFloorSetting'] = pulumi.Input.mapOptionalInputValue<
              FloorsettingAiPlatformFloorSetting, Map<String, dynamic>>(
          aiPlatformFloorSettingValue, (value) => value.toMap());
    }
    final enableFloorSettingEnforcementValue = enableFloorSettingEnforcement;
    if (enableFloorSettingEnforcementValue != null) {
      map['enableFloorSettingEnforcement'] = enableFloorSettingEnforcementValue;
    }
    map['filterConfig'] = pulumi.Input.mapInputValue<FloorsettingFilterConfig,
        Map<String, dynamic>>(filterConfig, (value) => value.toMap());
    final floorSettingMetadataValue = floorSettingMetadata;
    if (floorSettingMetadataValue != null) {
      map['floorSettingMetadata'] = pulumi.Input.mapOptionalInputValue<
              FloorsettingFloorSettingMetadata, Map<String, dynamic>>(
          floorSettingMetadataValue, (value) => value.toMap());
    }
    final googleMcpServerFloorSettingValue = googleMcpServerFloorSetting;
    if (googleMcpServerFloorSettingValue != null) {
      map['googleMcpServerFloorSetting'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.asOptionalInput<FloorsettingAiPlatformFloorSetting>(
              map['aiPlatformFloorSetting']),
      enableFloorSettingEnforcement: pulumi.Input.asOptionalInput<bool>(
          map['enableFloorSettingEnforcement']),
      filterConfig:
          pulumi.Input.asInput<FloorsettingFilterConfig>(map['filterConfig']),
      floorSettingMetadata:
          pulumi.Input.asOptionalInput<FloorsettingFloorSettingMetadata>(
              map['floorSettingMetadata']),
      googleMcpServerFloorSetting:
          pulumi.Input.asOptionalInput<FloorsettingGoogleMcpServerFloorSetting>(
              map['googleMcpServerFloorSetting']),
      integratedServices:
          pulumi.Input.asOptionalInput<List<String>>(map['integratedServices']),
      location: pulumi.Input.asInput<String>(map['location']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
