import 'package:pulumi/pulumi.dart';
import '../plugin_actions_config/plugin_actions_config.dart';
import '../plugin_config_template/plugin_config_template.dart';
import '../plugin_documentation/plugin_documentation.dart';
import '../plugin_hosting_service/plugin_hosting_service.dart';
import 'plugin_args.dart';

/// A plugin resource in the API hub.
///
///
///
/// ## Example Usage
///
/// ### Apihub Plugin Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihubPluginFull = new gcp.apihub.Plugin("apihub_plugin_full", {
/// location: "us-central1",
/// displayName: "Test Plugin",
/// description: "Test description",
/// pluginId: "plugin-full",
/// pluginCategory: "API_GATEWAY",
/// actionsConfigs: [{
/// id: "sync-metadata",
/// displayName: "Sync Metadata",
/// description: "Syncs API metadata.",
/// triggerMode: "API_HUB_SCHEDULE_TRIGGER",
/// }],
/// documentation: {
/// externalUri: "https://example.com/plugin-documentation",
/// },
/// hostingService: {
/// serviceUri: "https://your-plugin-service.example.com/api",
/// },
/// configTemplate: {
/// authConfigTemplate: {
/// supportedAuthTypes: [
/// "NO_AUTH",
/// "USER_PASSWORD",
/// ],
/// serviceAccount: {
/// serviceAccount: "test@developer.gserviceaccount.com",
/// },
/// },
/// additionalConfigTemplates: [
/// {
/// id: "string-val",
/// description: "API key for the service.",
/// valueType: "STRING",
/// required: false,
/// validationRegex: "^[a-zA-Z0-9]{5,20}$",
/// },
/// {
/// id: "integer-val",
/// description: "API key for the service.",
/// valueType: "INT",
/// required: true,
/// validationRegex: "",
/// },
/// {
/// id: "bool-val",
/// description: "API key for the service.",
/// valueType: "BOOL",
/// required: false,
/// validationRegex: "",
/// },
/// {
/// id: "enum-val",
/// description: "API key for the service.",
/// valueType: "ENUM",
/// enumOptions: [
/// {
/// id: "Option1",
/// displayName: "Option1",
/// description: "Description for Option1",
/// },
/// {
/// id: "Option2",
/// displayName: "Option2",
/// description: "Description for Option2",
/// },
/// ],
/// required: false,
/// validationRegex: "",
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_plugin_full = gcp.apihub.Plugin("apihub_plugin_full",
/// location="us-central1",
/// display_name="Test Plugin",
/// description="Test description",
/// plugin_id="plugin-full",
/// plugin_category="API_GATEWAY",
/// actions_configs=[{
/// "id": "sync-metadata",
/// "display_name": "Sync Metadata",
/// "description": "Syncs API metadata.",
/// "trigger_mode": "API_HUB_SCHEDULE_TRIGGER",
/// }],
/// documentation={
/// "external_uri": "https://example.com/plugin-documentation",
/// },
/// hosting_service={
/// "service_uri": "https://your-plugin-service.example.com/api",
/// },
/// config_template={
/// "auth_config_template": {
/// "supported_auth_types": [
/// "NO_AUTH",
/// "USER_PASSWORD",
/// ],
/// "service_account": {
/// "service_account": "test@developer.gserviceaccount.com",
/// },
/// },
/// "additional_config_templates": [
/// {
/// "id": "string-val",
/// "description": "API key for the service.",
/// "value_type": "STRING",
/// "required": False,
/// "validation_regex": "^[a-zA-Z0-9]{5,20}$",
/// },
/// {
/// "id": "integer-val",
/// "description": "API key for the service.",
/// "value_type": "INT",
/// "required": True,
/// "validation_regex": "",
/// },
/// {
/// "id": "bool-val",
/// "description": "API key for the service.",
/// "value_type": "BOOL",
/// "required": False,
/// "validation_regex": "",
/// },
/// {
/// "id": "enum-val",
/// "description": "API key for the service.",
/// "value_type": "ENUM",
/// "enum_options": [
/// {
/// "id": "Option1",
/// "display_name": "Option1",
/// "description": "Description for Option1",
/// },
/// {
/// "id": "Option2",
/// "display_name": "Option2",
/// "description": "Description for Option2",
/// },
/// ],
/// "required": False,
/// "validation_regex": "",
/// },
/// ],
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
/// var apihubPluginFull = new Gcp.ApiHub.Plugin("apihub_plugin_full", new()
/// {
/// Location = "us-central1",
/// DisplayName = "Test Plugin",
/// Description = "Test description",
/// PluginId = "plugin-full",
/// PluginCategory = "API_GATEWAY",
/// ActionsConfigs = new[]
/// {
/// new Gcp.ApiHub.Inputs.PluginActionsConfigArgs
/// {
/// Id = "sync-metadata",
/// DisplayName = "Sync Metadata",
/// Description = "Syncs API metadata.",
/// TriggerMode = "API_HUB_SCHEDULE_TRIGGER",
/// },
/// },
/// Documentation = new Gcp.ApiHub.Inputs.PluginDocumentationArgs
/// {
/// ExternalUri = "https://example.com/plugin-documentation",
/// },
/// HostingService = new Gcp.ApiHub.Inputs.PluginHostingServiceArgs
/// {
/// ServiceUri = "https://your-plugin-service.example.com/api",
/// },
/// ConfigTemplate = new Gcp.ApiHub.Inputs.PluginConfigTemplateArgs
/// {
/// AuthConfigTemplate = new Gcp.ApiHub.Inputs.PluginConfigTemplateAuthConfigTemplateArgs
/// {
/// SupportedAuthTypes = new[]
/// {
/// "NO_AUTH",
/// "USER_PASSWORD",
/// },
/// ServiceAccount = new Gcp.ApiHub.Inputs.PluginConfigTemplateAuthConfigTemplateServiceAccountArgs
/// {
/// ServiceAccount = "test@developer.gserviceaccount.com",
/// },
/// },
/// AdditionalConfigTemplates = new[]
/// {
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateArgs
/// {
/// Id = "string-val",
/// Description = "API key for the service.",
/// ValueType = "STRING",
/// Required = false,
/// ValidationRegex = "^[a-zA-Z0-9]{5,20}$",
/// },
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateArgs
/// {
/// Id = "integer-val",
/// Description = "API key for the service.",
/// ValueType = "INT",
/// Required = true,
/// ValidationRegex = "",
/// },
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateArgs
/// {
/// Id = "bool-val",
/// Description = "API key for the service.",
/// ValueType = "BOOL",
/// Required = false,
/// ValidationRegex = "",
/// },
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateArgs
/// {
/// Id = "enum-val",
/// Description = "API key for the service.",
/// ValueType = "ENUM",
/// EnumOptions = new[]
/// {
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs
/// {
/// Id = "Option1",
/// DisplayName = "Option1",
/// Description = "Description for Option1",
/// },
/// new Gcp.ApiHub.Inputs.PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs
/// {
/// Id = "Option2",
/// DisplayName = "Option2",
/// Description = "Description for Option2",
/// },
/// },
/// Required = false,
/// ValidationRegex = "",
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apihub.NewPlugin(ctx, "apihub_plugin_full", &apihub.PluginArgs{
/// Location:       pulumi.String("us-central1"),
/// DisplayName:    pulumi.String("Test Plugin"),
/// Description:    pulumi.String("Test description"),
/// PluginId:       pulumi.String("plugin-full"),
/// PluginCategory: pulumi.String("API_GATEWAY"),
/// ActionsConfigs: apihub.PluginActionsConfigArray{
/// &apihub.PluginActionsConfigArgs{
/// Id:          pulumi.String("sync-metadata"),
/// DisplayName: pulumi.String("Sync Metadata"),
/// Description: pulumi.String("Syncs API metadata."),
/// TriggerMode: pulumi.String("API_HUB_SCHEDULE_TRIGGER"),
/// },
/// },
/// Documentation: &apihub.PluginDocumentationArgs{
/// ExternalUri: pulumi.String("https://example.com/plugin-documentation"),
/// },
/// HostingService: &apihub.PluginHostingServiceArgs{
/// ServiceUri: pulumi.String("https://your-plugin-service.example.com/api"),
/// },
/// ConfigTemplate: &apihub.PluginConfigTemplateArgs{
/// AuthConfigTemplate: &apihub.PluginConfigTemplateAuthConfigTemplateArgs{
/// SupportedAuthTypes: pulumi.StringArray{
/// pulumi.String("NO_AUTH"),
/// pulumi.String("USER_PASSWORD"),
/// },
/// ServiceAccount: &apihub.PluginConfigTemplateAuthConfigTemplateServiceAccountArgs{
/// ServiceAccount: pulumi.String("test@developer.gserviceaccount.com"),
/// },
/// },
/// AdditionalConfigTemplates: apihub.PluginConfigTemplateAdditionalConfigTemplateArray{
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateArgs{
/// Id:              pulumi.String("string-val"),
/// Description:     pulumi.String("API key for the service."),
/// ValueType:       pulumi.String("STRING"),
/// Required:        pulumi.Bool(false),
/// ValidationRegex: pulumi.String("^[a-zA-Z0-9]{5,20}$"),
/// },
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateArgs{
/// Id:              pulumi.String("integer-val"),
/// Description:     pulumi.String("API key for the service."),
/// ValueType:       pulumi.String("INT"),
/// Required:        pulumi.Bool(true),
/// ValidationRegex: pulumi.String(""),
/// },
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateArgs{
/// Id:              pulumi.String("bool-val"),
/// Description:     pulumi.String("API key for the service."),
/// ValueType:       pulumi.String("BOOL"),
/// Required:        pulumi.Bool(false),
/// ValidationRegex: pulumi.String(""),
/// },
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateArgs{
/// Id:          pulumi.String("enum-val"),
/// Description: pulumi.String("API key for the service."),
/// ValueType:   pulumi.String("ENUM"),
/// EnumOptions: apihub.PluginConfigTemplateAdditionalConfigTemplateEnumOptionArray{
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs{
/// Id:          pulumi.String("Option1"),
/// DisplayName: pulumi.String("Option1"),
/// Description: pulumi.String("Description for Option1"),
/// },
/// &apihub.PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs{
/// Id:          pulumi.String("Option2"),
/// DisplayName: pulumi.String("Option2"),
/// Description: pulumi.String("Description for Option2"),
/// },
/// },
/// Required:        pulumi.Bool(false),
/// ValidationRegex: pulumi.String(""),
/// },
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
/// import com.pulumi.gcp.apihub.Plugin;
/// import com.pulumi.gcp.apihub.PluginArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginActionsConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginDocumentationArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginHostingServiceArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginConfigTemplateArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginConfigTemplateAuthConfigTemplateArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginConfigTemplateAuthConfigTemplateServiceAccountArgs;
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
/// var apihubPluginFull = new Plugin("apihubPluginFull", PluginArgs.builder()
/// .location("us-central1")
/// .displayName("Test Plugin")
/// .description("Test description")
/// .pluginId("plugin-full")
/// .pluginCategory("API_GATEWAY")
/// .actionsConfigs(PluginActionsConfigArgs.builder()
/// .id("sync-metadata")
/// .displayName("Sync Metadata")
/// .description("Syncs API metadata.")
/// .triggerMode("API_HUB_SCHEDULE_TRIGGER")
/// .build())
/// .documentation(PluginDocumentationArgs.builder()
/// .externalUri("https://example.com/plugin-documentation")
/// .build())
/// .hostingService(PluginHostingServiceArgs.builder()
/// .serviceUri("https://your-plugin-service.example.com/api")
/// .build())
/// .configTemplate(PluginConfigTemplateArgs.builder()
/// .authConfigTemplate(PluginConfigTemplateAuthConfigTemplateArgs.builder()
/// .supportedAuthTypes(
/// "NO_AUTH",
/// "USER_PASSWORD")
/// .serviceAccount(PluginConfigTemplateAuthConfigTemplateServiceAccountArgs.builder()
/// .serviceAccount("test@developer.gserviceaccount.com")
/// .build())
/// .build())
/// .additionalConfigTemplates(
/// PluginConfigTemplateAdditionalConfigTemplateArgs.builder()
/// .id("string-val")
/// .description("API key for the service.")
/// .valueType("STRING")
/// .required(false)
/// .validationRegex("^[a-zA-Z0-9]{5,20}$")
/// .build(),
/// PluginConfigTemplateAdditionalConfigTemplateArgs.builder()
/// .id("integer-val")
/// .description("API key for the service.")
/// .valueType("INT")
/// .required(true)
/// .validationRegex("")
/// .build(),
/// PluginConfigTemplateAdditionalConfigTemplateArgs.builder()
/// .id("bool-val")
/// .description("API key for the service.")
/// .valueType("BOOL")
/// .required(false)
/// .validationRegex("")
/// .build(),
/// PluginConfigTemplateAdditionalConfigTemplateArgs.builder()
/// .id("enum-val")
/// .description("API key for the service.")
/// .valueType("ENUM")
/// .enumOptions(
/// PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs.builder()
/// .id("Option1")
/// .displayName("Option1")
/// .description("Description for Option1")
/// .build(),
/// PluginConfigTemplateAdditionalConfigTemplateEnumOptionArgs.builder()
/// .id("Option2")
/// .displayName("Option2")
/// .description("Description for Option2")
/// .build())
/// .required(false)
/// .validationRegex("")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apihubPluginFull:
/// type: gcp:apihub:Plugin
/// name: apihub_plugin_full
/// properties:
/// location: us-central1
/// displayName: Test Plugin
/// description: Test description
/// pluginId: plugin-full
/// pluginCategory: API_GATEWAY
/// actionsConfigs:
/// - id: sync-metadata
/// displayName: Sync Metadata
/// description: Syncs API metadata.
/// triggerMode: API_HUB_SCHEDULE_TRIGGER
/// documentation:
/// externalUri: https://example.com/plugin-documentation
/// hostingService:
/// serviceUri: https://your-plugin-service.example.com/api
/// configTemplate:
/// authConfigTemplate:
/// supportedAuthTypes:
/// - NO_AUTH
/// - USER_PASSWORD
/// serviceAccount:
/// serviceAccount: test@developer.gserviceaccount.com
/// additionalConfigTemplates:
/// - id: string-val
/// description: API key for the service.
/// valueType: STRING
/// required: false
/// validationRegex: ^[a-zA-Z0-9]{5,20}$
/// - id: integer-val
/// description: API key for the service.
/// valueType: INT
/// required: true
/// validationRegex: ""
/// - id: bool-val
/// description: API key for the service.
/// valueType: BOOL
/// required: false
/// validationRegex: ""
/// - id: enum-val
/// description: API key for the service.
/// valueType: ENUM
/// enumOptions:
/// - id: Option1
/// displayName: Option1
/// description: Description for Option1
/// - id: Option2
/// displayName: Option2
/// description: Description for Option2
/// required: false
/// validationRegex: ""
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Plugin can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/plugins/{{plugin_id}}`
///
/// * `{{project}}/{{location}}/{{plugin_id}}`
///
/// * `{{location}}/{{plugin_id}}`
///
/// When using the `pulumi import` command, Plugin can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default projects/{{project}}/locations/{{location}}/plugins/{{plugin_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default {{project}}/{{location}}/{{plugin_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/plugin:Plugin default {{location}}/{{plugin_id}}
/// ```
class Plugin extends CustomResource {
  /// The configuration of actions supported by the plugin.
  /// Structure is documented below.
  late final Output<List<PluginActionsConfig>?> actionsConfigs;

  /// ConfigTemplate represents the configuration template for a plugin.
  /// Structure is documented below.
  late final Output<PluginConfigTemplate> configTemplate;

  /// Timestamp indicating when the plugin was created.
  late final Output<String> createTime;

  /// The plugin description. Max length is 2000 characters (Unicode code
  /// points).
  late final Output<String?> description;

  /// The display name of the plugin. Max length is 50 characters (Unicode code
  /// points).
  late final Output<String> displayName;

  /// Documentation details.
  /// Structure is documented below.
  late final Output<PluginDocumentation?> documentation;

  /// The information related to the service implemented by the plugin
  /// developer, used to invoke the plugin's functionality.
  /// Structure is documented below.
  late final Output<PluginHostingService?> hostingService;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The name of the plugin.
  /// Format: `projects/{project}/locations/{location}/plugins/{plugin}`
  late final Output<String> name;

  /// The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or
  /// 'USER_OWNED'.
  /// Possible values:
  /// OWNERSHIP_TYPE_UNSPECIFIED
  /// SYSTEM_OWNED
  /// USER_OWNED
  late final Output<String> ownershipType;

  /// Possible values:
  /// PLUGIN_CATEGORY_UNSPECIFIED
  /// API_GATEWAY
  /// API_PRODUCER
  late final Output<String?> pluginCategory;

  /// The ID to use for the Plugin resource, which will become the final
  /// component of the Plugin's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another Plugin resource in the API hub
  /// instance.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, overall resource name which will be
  /// of format
  /// `projects/{project}/locations/{location}/plugins/{plugin}`,
  /// its length is limited to 1000 characters and valid characters are
  /// /a-z[0-9]-_/.
  late final Output<String> pluginId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Represents the state of the plugin.
  /// Note this field will not be set for plugins developed via plugin
  /// framework as the state will be managed at plugin instance level.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ENABLED
  /// DISABLED
  late final Output<String> state;

  /// Timestamp indicating when the plugin was last updated.
  late final Output<String> updateTime;

  Plugin(
    String name, {
    PluginArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/plugin:Plugin',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionsConfigs = Output.createUnknown<List<PluginActionsConfig>?>();
    this.configTemplate = Output.createUnknown<PluginConfigTemplate>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.documentation = Output.createUnknown<PluginDocumentation?>();
    this.hostingService = Output.createUnknown<PluginHostingService?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.ownershipType = Output.createUnknown<String>();
    this.pluginCategory = Output.createUnknown<String?>();
    this.pluginId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
