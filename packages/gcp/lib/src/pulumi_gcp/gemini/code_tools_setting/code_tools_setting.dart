import 'package:pulumi/pulumi.dart';
import '../code_tools_setting_enabled_tool/code_tools_setting_enabled_tool.dart';
import 'code_tools_setting_args.dart';

/// The resource for managing CodeTools settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Code Tools Setting Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.CodeToolsSetting("example", {
/// codeToolsSettingId: "ls1-tf",
/// location: "global",
/// labels: {
/// my_key: "my_value",
/// },
/// enabledTools: [{
/// handle: "my_handle",
/// tool: "my_tool",
/// accountConnector: "my_con",
/// configs: [{
/// key: "my_key",
/// value: "my_value",
/// }],
/// uriOverride: "my_uri_override",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.CodeToolsSetting("example",
/// code_tools_setting_id="ls1-tf",
/// location="global",
/// labels={
/// "my_key": "my_value",
/// },
/// enabled_tools=[{
/// "handle": "my_handle",
/// "tool": "my_tool",
/// "account_connector": "my_con",
/// "configs": [{
/// "key": "my_key",
/// "value": "my_value",
/// }],
/// "uri_override": "my_uri_override",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Gemini.CodeToolsSetting("example", new()
/// {
/// CodeToolsSettingId = "ls1-tf",
/// Location = "global",
/// Labels =
/// {
/// { "my_key", "my_value" },
/// },
/// EnabledTools = new[]
/// {
/// new Gcp.Gemini.Inputs.CodeToolsSettingEnabledToolArgs
/// {
/// Handle = "my_handle",
/// Tool = "my_tool",
/// AccountConnector = "my_con",
/// Configs = new[]
/// {
/// new Gcp.Gemini.Inputs.CodeToolsSettingEnabledToolConfigArgs
/// {
/// Key = "my_key",
/// Value = "my_value",
/// },
/// },
/// UriOverride = "my_uri_override",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.NewCodeToolsSetting(ctx, "example", &gemini.CodeToolsSettingArgs{
/// CodeToolsSettingId: pulumi.String("ls1-tf"),
/// Location:           pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "my_key": pulumi.String("my_value"),
/// },
/// EnabledTools: gemini.CodeToolsSettingEnabledToolArray{
/// &gemini.CodeToolsSettingEnabledToolArgs{
/// Handle:           pulumi.String("my_handle"),
/// Tool:             pulumi.String("my_tool"),
/// AccountConnector: pulumi.String("my_con"),
/// Configs: gemini.CodeToolsSettingEnabledToolConfigArray{
/// &gemini.CodeToolsSettingEnabledToolConfigArgs{
/// Key:   pulumi.String("my_key"),
/// Value: pulumi.String("my_value"),
/// },
/// },
/// UriOverride: pulumi.String("my_uri_override"),
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
/// import com.pulumi.gcp.gemini.CodeToolsSetting;
/// import com.pulumi.gcp.gemini.CodeToolsSettingArgs;
/// import com.pulumi.gcp.gemini.inputs.CodeToolsSettingEnabledToolArgs;
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
/// var example = new CodeToolsSetting("example", CodeToolsSettingArgs.builder()
/// .codeToolsSettingId("ls1-tf")
/// .location("global")
/// .labels(Map.of("my_key", "my_value"))
/// .enabledTools(CodeToolsSettingEnabledToolArgs.builder()
/// .handle("my_handle")
/// .tool("my_tool")
/// .accountConnector("my_con")
/// .configs(CodeToolsSettingEnabledToolConfigArgs.builder()
/// .key("my_key")
/// .value("my_value")
/// .build())
/// .uriOverride("my_uri_override")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:gemini:CodeToolsSetting
/// properties:
/// codeToolsSettingId: ls1-tf
/// location: global
/// labels:
/// my_key: my_value
/// enabledTools:
/// - handle: my_handle
/// tool: my_tool
/// accountConnector: my_con
/// configs:
/// - key: my_key
/// value: my_value
/// uriOverride: my_uri_override
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CodeToolsSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}`
///
/// * `{{project}}/{{location}}/{{code_tools_setting_id}}`
///
/// * `{{location}}/{{code_tools_setting_id}}`
///
/// When using the `pulumi import` command, CodeToolsSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSetting:CodeToolsSetting default projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSetting:CodeToolsSetting default {{project}}/{{location}}/{{code_tools_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSetting:CodeToolsSetting default {{location}}/{{code_tools_setting_id}}
/// ```
class CodeToolsSetting extends CustomResource {
  /// Id of the Code Tools Setting.
  late final Output<String> codeToolsSettingId;

  /// Create time stamp.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  late final Output<List<CodeToolsSettingEnabledTool>> enabledTools;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/codeToolsSettings/{codeToolsSetting}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final Output<String> updateTime;

  CodeToolsSetting(
    String name, {
    CodeToolsSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeToolsSetting:CodeToolsSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeToolsSettingId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enabledTools =
        Output.createUnknown<List<CodeToolsSettingEnabledTool>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
