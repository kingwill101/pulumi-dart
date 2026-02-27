import 'package:pulumi/pulumi.dart' as pulumi;
import '../floorsetting_ai_platform_floor_setting/floorsetting_ai_platform_floor_setting.dart';
import '../floorsetting_filter_config/floorsetting_filter_config.dart';
import '../floorsetting_floor_setting_metadata/floorsetting_floor_setting_metadata.dart';
import '../floorsetting_google_mcp_server_floor_setting/floorsetting_google_mcp_server_floor_setting.dart';
import 'floorsetting_args.dart';

/// Model Armor floor settings define rules that dictate minimum requirements for all Model Armor templates created at a specific point in the Google Cloud resource hierarchy (that is, at an organization, folder, or project level). If there are
/// multiple floor settings that conflict with each other, the settings lower in the resource hierarchy take precedence
/// For more information, checkout https://cloud.google.com/security-command-center/docs/model_armor_floor_settings
///
///
///
/// ## Example Usage
///
/// ### Modelarmor Floorsetting Basic
///
///
///
/// ### Modelarmor Floorsetting Filter Config
///
///
///
/// ### Modelarmor Floorsetting Ai Platform Metadata
///
///
///
///
/// ## Import
///
/// Floorsetting can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/floorSetting`
///
/// * `{{parent}}/{{location}}`
///
/// When using the `pulumi import` command, Floorsetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:modelarmor/floorsetting:Floorsetting default {{parent}}/locations/{{location}}/floorSetting
/// ```
///
/// ```sh
/// $ pulumi import gcp:modelarmor/floorsetting:Floorsetting default {{parent}}/{{location}}
/// ```
class Floorsetting extends pulumi.CustomResource {
  /// AI Platform floor setting.
  /// Structure is documented below.
  late final pulumi.Output<FloorsettingAiPlatformFloorSetting?>
      aiPlatformFloorSetting;

  /// [Output only] Create timestamp
  late final pulumi.Output<String> createTime;

  /// Floor Settings enforcement status.
  late final pulumi.Output<bool?> enableFloorSettingEnforcement;

  /// Filters configuration.
  /// Structure is documented below.
  late final pulumi.Output<FloorsettingFilterConfig> filterConfig;

  /// Metadata to enable multi language detection via floor setting.
  /// Structure is documented below.
  late final pulumi.Output<FloorsettingFloorSettingMetadata?>
      floorSettingMetadata;

  /// Google MCP Server floor setting.
  /// Structure is documented below.
  late final pulumi.Output<FloorsettingGoogleMcpServerFloorSetting?>
      googleMcpServerFloorSetting;

  /// List of integrated services for which the floor setting is applicable.
  late final pulumi.Output<List<String>?> integratedServices;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name.
  late final pulumi.Output<String> name;

  /// Will be any one of these:
  /// * `projects/{project}`
  /// * `folders/{folder}`
  /// * `organizations/{organizationId}`
  late final pulumi.Output<String> parent;

  /// [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  Floorsetting(
    String name, {
    FloorsettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:modelarmor/floorsetting:Floorsetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aiPlatformFloorSetting =
        registerOutput<FloorsettingAiPlatformFloorSetting?>(
            'aiPlatformFloorSetting');
    this.createTime = registerOutput<String>('createTime');
    this.enableFloorSettingEnforcement =
        registerOutput<bool?>('enableFloorSettingEnforcement');
    this.filterConfig =
        registerOutput<FloorsettingFilterConfig>('filterConfig');
    this.floorSettingMetadata =
        registerOutput<FloorsettingFloorSettingMetadata?>(
            'floorSettingMetadata');
    this.googleMcpServerFloorSetting =
        registerOutput<FloorsettingGoogleMcpServerFloorSetting?>(
            'googleMcpServerFloorSetting');
    this.integratedServices =
        registerOutput<List<String>?>('integratedServices');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
