// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'floorsetting_ai_platform_floor_setting.dart';
import 'floorsetting_filter_config.dart';
import 'floorsetting_floor_setting_metadata.dart';
import 'floorsetting_google_mcp_server_floor_setting.dart';

/// {@template pulumi_modelarmor_floorsetting_floorsetting_args_doc}
/// The set of arguments for Floorsetting.
/// {@endtemplate}
/// {@macro pulumi_modelarmor_floorsetting_floorsetting_args_doc}
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

  /// Creates a new [FloorsettingArgs].
  /// [aiPlatformFloorSetting] AI Platform floor setting.
  /// [enableFloorSettingEnforcement] Floor Settings enforcement status.
  /// [filterConfig] Filters configuration.
  /// [floorSettingMetadata] Metadata to enable multi language detection via floor setting.
  /// [googleMcpServerFloorSetting] Google MCP Server floor setting.
  /// [integratedServices] List of integrated services for which the floor setting is applicable.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [parent] Will be any one of these:
  FloorsettingArgs({
    FloorsettingAiPlatformFloorSetting? aiPlatformFloorSetting,
    bool? enableFloorSettingEnforcement,
    required FloorsettingFilterConfig filterConfig,
    FloorsettingFloorSettingMetadata? floorSettingMetadata,
    FloorsettingGoogleMcpServerFloorSetting? googleMcpServerFloorSetting,
    List<String>? integratedServices,
    required String location,
    required String parent,
  }) : aiPlatformFloorSetting =
           pulumi.Input.asOptionalInput<FloorsettingAiPlatformFloorSetting>(
             aiPlatformFloorSetting,
           ),
       enableFloorSettingEnforcement = pulumi.Input.asOptionalInput<bool>(
         enableFloorSettingEnforcement,
       ),
       filterConfig = pulumi.Input.asInput<FloorsettingFilterConfig>(
         filterConfig,
       ),
       floorSettingMetadata =
           pulumi.Input.asOptionalInput<FloorsettingFloorSettingMetadata>(
             floorSettingMetadata,
           ),
       googleMcpServerFloorSetting =
           pulumi.Input.asOptionalInput<
             FloorsettingGoogleMcpServerFloorSetting
           >(googleMcpServerFloorSetting),
       integratedServices = pulumi.Input.asOptionalInput<List<String>>(
         integratedServices,
       ),
       location = pulumi.Input.asInput<String>(location),
       parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiPlatformFloorSetting':
          ?pulumi.Input.mapOptionalInputValue<
            FloorsettingAiPlatformFloorSetting,
            Map<String, dynamic>
          >(aiPlatformFloorSetting, (value) => value.toMap()),
      'enableFloorSettingEnforcement': ?enableFloorSettingEnforcement,
      'filterConfig':
          pulumi.Input.mapInputValue<
            FloorsettingFilterConfig,
            Map<String, dynamic>
          >(filterConfig, (value) => value.toMap()),
      'floorSettingMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            FloorsettingFloorSettingMetadata,
            Map<String, dynamic>
          >(floorSettingMetadata, (value) => value.toMap()),
      'googleMcpServerFloorSetting':
          ?pulumi.Input.mapOptionalInputValue<
            FloorsettingGoogleMcpServerFloorSetting,
            Map<String, dynamic>
          >(googleMcpServerFloorSetting, (value) => value.toMap()),
      'integratedServices': ?integratedServices,
      'location': location,
      'parent': parent,
    };
  }

  factory FloorsettingArgs.fromMap(Map<String, dynamic> map) {
    return FloorsettingArgs(
      aiPlatformFloorSetting: map['aiPlatformFloorSetting'] == null
          ? null
          : FloorsettingAiPlatformFloorSetting.fromMap(
              (map['aiPlatformFloorSetting'] as Map).cast<String, dynamic>(),
            ),
      enableFloorSettingEnforcement:
          map['enableFloorSettingEnforcement'] == null
          ? null
          : map['enableFloorSettingEnforcement'] as bool,
      filterConfig: FloorsettingFilterConfig.fromMap(
        (map['filterConfig'] as Map).cast<String, dynamic>(),
      ),
      floorSettingMetadata: map['floorSettingMetadata'] == null
          ? null
          : FloorsettingFloorSettingMetadata.fromMap(
              (map['floorSettingMetadata'] as Map).cast<String, dynamic>(),
            ),
      googleMcpServerFloorSetting: map['googleMcpServerFloorSetting'] == null
          ? null
          : FloorsettingGoogleMcpServerFloorSetting.fromMap(
              (map['googleMcpServerFloorSetting'] as Map)
                  .cast<String, dynamic>(),
            ),
      integratedServices: map['integratedServices'] == null
          ? null
          : (map['integratedServices'] as List).cast<String>(),
      location: map['location'] as String,
      parent: map['parent'] as String,
    );
  }
}
