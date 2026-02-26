import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const floorsetting_basic = new gcp.modelarmor.Floorsetting("floorsetting-basic", {
/// parent: "projects/my-project-name",
/// location: "global",
/// filterConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// floorsetting_basic = gcp.modelarmor.Floorsetting("floorsetting-basic",
/// parent="projects/my-project-name",
/// location="global",
/// filter_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var floorsetting_basic = new Gcp.ModelArmor.Floorsetting("floorsetting-basic", new()
/// {
/// Parent = "projects/my-project-name",
/// Location = "global",
/// FilterConfig = null,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := modelarmor.NewFloorsetting(ctx, "floorsetting-basic", &modelarmor.FloorsettingArgs{
/// Parent:       pulumi.String("projects/my-project-name"),
/// Location:     pulumi.String("global"),
/// FilterConfig: &modelarmor.FloorsettingFilterConfigArgs{},
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Floorsetting;
/// import com.pulumi.gcp.modelarmor.FloorsettingArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var floorsetting_basic = new Floorsetting("floorsetting-basic", FloorsettingArgs.builder()
/// .parent("projects/my-project-name")
/// .location("global")
/// .filterConfig(FloorsettingFilterConfigArgs.builder()
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// floorsetting-basic:
/// type: gcp:modelarmor:Floorsetting
/// properties:
/// parent: projects/my-project-name
/// location: global
/// filterConfig: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Modelarmor Floorsetting Filter Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const floorsetting_filter_config = new gcp.modelarmor.Floorsetting("floorsetting-filter-config", {
/// location: "global",
/// parent: "project/my-project-name",
/// filterConfig: {
/// raiSettings: {
/// raiFilters: [{
/// filterType: "DANGEROUS",
/// confidenceLevel: "MEDIUM_AND_ABOVE",
/// }],
/// },
/// sdpSettings: {
/// basicConfig: {
/// filterEnforcement: "ENABLED",
/// },
/// },
/// piAndJailbreakFilterSettings: {
/// filterEnforcement: "ENABLED",
/// confidenceLevel: "HIGH",
/// },
/// maliciousUriFilterSettings: {
/// filterEnforcement: "ENABLED",
/// },
/// },
/// enableFloorSettingEnforcement: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// floorsetting_filter_config = gcp.modelarmor.Floorsetting("floorsetting-filter-config",
/// location="global",
/// parent="project/my-project-name",
/// filter_config={
/// "rai_settings": {
/// "rai_filters": [{
/// "filter_type": "DANGEROUS",
/// "confidence_level": "MEDIUM_AND_ABOVE",
/// }],
/// },
/// "sdp_settings": {
/// "basic_config": {
/// "filter_enforcement": "ENABLED",
/// },
/// },
/// "pi_and_jailbreak_filter_settings": {
/// "filter_enforcement": "ENABLED",
/// "confidence_level": "HIGH",
/// },
/// "malicious_uri_filter_settings": {
/// "filter_enforcement": "ENABLED",
/// },
/// },
/// enable_floor_setting_enforcement=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var floorsetting_filter_config = new Gcp.ModelArmor.Floorsetting("floorsetting-filter-config", new()
/// {
/// Location = "global",
/// Parent = "project/my-project-name",
/// FilterConfig = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigArgs
/// {
/// RaiSettings = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigRaiSettingsArgs
/// {
/// RaiFilters = new[]
/// {
/// new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigRaiSettingsRaiFilterArgs
/// {
/// FilterType = "DANGEROUS",
/// ConfidenceLevel = "MEDIUM_AND_ABOVE",
/// },
/// },
/// },
/// SdpSettings = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigSdpSettingsArgs
/// {
/// BasicConfig = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigSdpSettingsBasicConfigArgs
/// {
/// FilterEnforcement = "ENABLED",
/// },
/// },
/// PiAndJailbreakFilterSettings = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigPiAndJailbreakFilterSettingsArgs
/// {
/// FilterEnforcement = "ENABLED",
/// ConfidenceLevel = "HIGH",
/// },
/// MaliciousUriFilterSettings = new Gcp.ModelArmor.Inputs.FloorsettingFilterConfigMaliciousUriFilterSettingsArgs
/// {
/// FilterEnforcement = "ENABLED",
/// },
/// },
/// EnableFloorSettingEnforcement = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := modelarmor.NewFloorsetting(ctx, "floorsetting-filter-config", &modelarmor.FloorsettingArgs{
/// Location: pulumi.String("global"),
/// Parent:   pulumi.String("project/my-project-name"),
/// FilterConfig: &modelarmor.FloorsettingFilterConfigArgs{
/// RaiSettings: &modelarmor.FloorsettingFilterConfigRaiSettingsArgs{
/// RaiFilters: modelarmor.FloorsettingFilterConfigRaiSettingsRaiFilterArray{
/// &modelarmor.FloorsettingFilterConfigRaiSettingsRaiFilterArgs{
/// FilterType:      pulumi.String("DANGEROUS"),
/// ConfidenceLevel: pulumi.String("MEDIUM_AND_ABOVE"),
/// },
/// },
/// },
/// SdpSettings: &modelarmor.FloorsettingFilterConfigSdpSettingsArgs{
/// BasicConfig: &modelarmor.FloorsettingFilterConfigSdpSettingsBasicConfigArgs{
/// FilterEnforcement: pulumi.String("ENABLED"),
/// },
/// },
/// PiAndJailbreakFilterSettings: &modelarmor.FloorsettingFilterConfigPiAndJailbreakFilterSettingsArgs{
/// FilterEnforcement: pulumi.String("ENABLED"),
/// ConfidenceLevel:   pulumi.String("HIGH"),
/// },
/// MaliciousUriFilterSettings: &modelarmor.FloorsettingFilterConfigMaliciousUriFilterSettingsArgs{
/// FilterEnforcement: pulumi.String("ENABLED"),
/// },
/// },
/// EnableFloorSettingEnforcement: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Floorsetting;
/// import com.pulumi.gcp.modelarmor.FloorsettingArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigRaiSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigSdpSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigSdpSettingsBasicConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigPiAndJailbreakFilterSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigMaliciousUriFilterSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var floorsetting_filter_config = new Floorsetting("floorsetting-filter-config", FloorsettingArgs.builder()
/// .location("global")
/// .parent("project/my-project-name")
/// .filterConfig(FloorsettingFilterConfigArgs.builder()
/// .raiSettings(FloorsettingFilterConfigRaiSettingsArgs.builder()
/// .raiFilters(FloorsettingFilterConfigRaiSettingsRaiFilterArgs.builder()
/// .filterType("DANGEROUS")
/// .confidenceLevel("MEDIUM_AND_ABOVE")
/// .build())
/// .build())
/// .sdpSettings(FloorsettingFilterConfigSdpSettingsArgs.builder()
/// .basicConfig(FloorsettingFilterConfigSdpSettingsBasicConfigArgs.builder()
/// .filterEnforcement("ENABLED")
/// .build())
/// .build())
/// .piAndJailbreakFilterSettings(FloorsettingFilterConfigPiAndJailbreakFilterSettingsArgs.builder()
/// .filterEnforcement("ENABLED")
/// .confidenceLevel("HIGH")
/// .build())
/// .maliciousUriFilterSettings(FloorsettingFilterConfigMaliciousUriFilterSettingsArgs.builder()
/// .filterEnforcement("ENABLED")
/// .build())
/// .build())
/// .enableFloorSettingEnforcement(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// floorsetting-filter-config:
/// type: gcp:modelarmor:Floorsetting
/// properties:
/// location: global
/// parent: project/my-project-name
/// filterConfig:
/// raiSettings:
/// raiFilters:
/// - filterType: DANGEROUS
/// confidenceLevel: MEDIUM_AND_ABOVE
/// sdpSettings:
/// basicConfig:
/// filterEnforcement: ENABLED
/// piAndJailbreakFilterSettings:
/// filterEnforcement: ENABLED
/// confidenceLevel: HIGH
/// maliciousUriFilterSettings:
/// filterEnforcement: ENABLED
/// enableFloorSettingEnforcement: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Modelarmor Floorsetting Ai Platform Metadata
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const floorsetting_integrated_metadata = new gcp.modelarmor.Floorsetting("floorsetting-integrated-metadata", {
/// location: "global",
/// parent: "projects/my-project-name",
/// filterConfig: {},
/// enableFloorSettingEnforcement: false,
/// aiPlatformFloorSetting: {
/// inspectOnly: true,
/// enableCloudLogging: true,
/// },
/// floorSettingMetadata: {
/// multiLanguageDetection: {
/// enableMultiLanguageDetection: false,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// floorsetting_integrated_metadata = gcp.modelarmor.Floorsetting("floorsetting-integrated-metadata",
/// location="global",
/// parent="projects/my-project-name",
/// filter_config={},
/// enable_floor_setting_enforcement=False,
/// ai_platform_floor_setting={
/// "inspect_only": True,
/// "enable_cloud_logging": True,
/// },
/// floor_setting_metadata={
/// "multi_language_detection": {
/// "enable_multi_language_detection": False,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var floorsetting_integrated_metadata = new Gcp.ModelArmor.Floorsetting("floorsetting-integrated-metadata", new()
/// {
/// Location = "global",
/// Parent = "projects/my-project-name",
/// FilterConfig = null,
/// EnableFloorSettingEnforcement = false,
/// AiPlatformFloorSetting = new Gcp.ModelArmor.Inputs.FloorsettingAiPlatformFloorSettingArgs
/// {
/// InspectOnly = true,
/// EnableCloudLogging = true,
/// },
/// FloorSettingMetadata = new Gcp.ModelArmor.Inputs.FloorsettingFloorSettingMetadataArgs
/// {
/// MultiLanguageDetection = new Gcp.ModelArmor.Inputs.FloorsettingFloorSettingMetadataMultiLanguageDetectionArgs
/// {
/// EnableMultiLanguageDetection = false,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := modelarmor.NewFloorsetting(ctx, "floorsetting-integrated-metadata", &modelarmor.FloorsettingArgs{
/// Location:                      pulumi.String("global"),
/// Parent:                        pulumi.String("projects/my-project-name"),
/// FilterConfig:                  &modelarmor.FloorsettingFilterConfigArgs{},
/// EnableFloorSettingEnforcement: pulumi.Bool(false),
/// AiPlatformFloorSetting: &modelarmor.FloorsettingAiPlatformFloorSettingArgs{
/// InspectOnly:        pulumi.Bool(true),
/// EnableCloudLogging: pulumi.Bool(true),
/// },
/// FloorSettingMetadata: &modelarmor.FloorsettingFloorSettingMetadataArgs{
/// MultiLanguageDetection: &modelarmor.FloorsettingFloorSettingMetadataMultiLanguageDetectionArgs{
/// EnableMultiLanguageDetection: pulumi.Bool(false),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Floorsetting;
/// import com.pulumi.gcp.modelarmor.FloorsettingArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingAiPlatformFloorSettingArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFloorSettingMetadataArgs;
/// import com.pulumi.gcp.modelarmor.inputs.FloorsettingFloorSettingMetadataMultiLanguageDetectionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var floorsetting_integrated_metadata = new Floorsetting("floorsetting-integrated-metadata", FloorsettingArgs.builder()
/// .location("global")
/// .parent("projects/my-project-name")
/// .filterConfig(FloorsettingFilterConfigArgs.builder()
/// .build())
/// .enableFloorSettingEnforcement(false)
/// .aiPlatformFloorSetting(FloorsettingAiPlatformFloorSettingArgs.builder()
/// .inspectOnly(true)
/// .enableCloudLogging(true)
/// .build())
/// .floorSettingMetadata(FloorsettingFloorSettingMetadataArgs.builder()
/// .multiLanguageDetection(FloorsettingFloorSettingMetadataMultiLanguageDetectionArgs.builder()
/// .enableMultiLanguageDetection(false)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// floorsetting-integrated-metadata:
/// type: gcp:modelarmor:Floorsetting
/// properties:
/// location: global
/// parent: projects/my-project-name
/// filterConfig: {}
/// enableFloorSettingEnforcement: false
/// aiPlatformFloorSetting:
/// inspectOnly: true
/// enableCloudLogging: true
/// floorSettingMetadata:
/// multiLanguageDetection:
/// enableMultiLanguageDetection: false
/// ```
/// <!--End PulumiCodeChooser -->
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
class Floorsetting extends CustomResource {
  /// AI Platform floor setting.
  /// Structure is documented below.
  late final Output<FloorsettingAiPlatformFloorSetting?> aiPlatformFloorSetting;

  /// [Output only] Create timestamp
  late final Output<String> createTime;

  /// Floor Settings enforcement status.
  late final Output<bool?> enableFloorSettingEnforcement;

  /// Filters configuration.
  /// Structure is documented below.
  late final Output<FloorsettingFilterConfig> filterConfig;

  /// Metadata to enable multi language detection via floor setting.
  /// Structure is documented below.
  late final Output<FloorsettingFloorSettingMetadata?> floorSettingMetadata;

  /// Google MCP Server floor setting.
  /// Structure is documented below.
  late final Output<FloorsettingGoogleMcpServerFloorSetting?>
      googleMcpServerFloorSetting;

  /// List of integrated services for which the floor setting is applicable.
  late final Output<List<String>?> integratedServices;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The resource name.
  late final Output<String> name;

  /// Will be any one of these:
  /// * `projects/{project}`
  /// * `folders/{folder}`
  /// * `organizations/{organizationId}`
  late final Output<String> parent;

  /// [Output only] Update timestamp
  late final Output<String> updateTime;

  Floorsetting(
    String name, {
    FloorsettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:modelarmor/floorsetting:Floorsetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
