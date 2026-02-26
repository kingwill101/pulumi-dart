import 'package:pulumi/pulumi.dart';
import 'gemini_gcp_enablement_setting_binding_args.dart';

/// The resource for managing GeminiGcpEnablementSetting setting bindings for Admin Control.
///
///
/// To get more information about GeminiGcpEnablementSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Gemini Gcp Enablement Setting Binding Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.GeminiGcpEnablementSetting("basic", {
/// geminiGcpEnablementSettingId: "ls-tf1",
/// location: "global",
/// labels: {
/// my_key: "my_value",
/// },
/// enableCustomerDataSharing: true,
/// webGroundingType: "WEB_GROUNDING_FOR_ENTERPRISE",
/// });
/// const example = new gcp.gemini.GeminiGcpEnablementSettingBinding("example", {
/// geminiGcpEnablementSettingId: basic.geminiGcpEnablementSettingId,
/// settingBindingId: "ls-tf1b1",
/// location: "global",
/// target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.GeminiGcpEnablementSetting("basic",
/// gemini_gcp_enablement_setting_id="ls-tf1",
/// location="global",
/// labels={
/// "my_key": "my_value",
/// },
/// enable_customer_data_sharing=True,
/// web_grounding_type="WEB_GROUNDING_FOR_ENTERPRISE")
/// example = gcp.gemini.GeminiGcpEnablementSettingBinding("example",
/// gemini_gcp_enablement_setting_id=basic.gemini_gcp_enablement_setting_id,
/// setting_binding_id="ls-tf1b1",
/// location="global",
/// target="projects/980109375338")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.Gemini.GeminiGcpEnablementSetting("basic", new()
/// {
/// GeminiGcpEnablementSettingId = "ls-tf1",
/// Location = "global",
/// Labels =
/// {
/// { "my_key", "my_value" },
/// },
/// EnableCustomerDataSharing = true,
/// WebGroundingType = "WEB_GROUNDING_FOR_ENTERPRISE",
/// });
///
/// var example = new Gcp.Gemini.GeminiGcpEnablementSettingBinding("example", new()
/// {
/// GeminiGcpEnablementSettingId = basic.GeminiGcpEnablementSettingId,
/// SettingBindingId = "ls-tf1b1",
/// Location = "global",
/// Target = "projects/980109375338",
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
/// basic, err := gemini.NewGeminiGcpEnablementSetting(ctx, "basic", &gemini.GeminiGcpEnablementSettingArgs{
/// GeminiGcpEnablementSettingId: pulumi.String("ls-tf1"),
/// Location:                     pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "my_key": pulumi.String("my_value"),
/// },
/// EnableCustomerDataSharing: pulumi.Bool(true),
/// WebGroundingType:          pulumi.String("WEB_GROUNDING_FOR_ENTERPRISE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = gemini.NewGeminiGcpEnablementSettingBinding(ctx, "example", &gemini.GeminiGcpEnablementSettingBindingArgs{
/// GeminiGcpEnablementSettingId: basic.GeminiGcpEnablementSettingId,
/// SettingBindingId:             pulumi.String("ls-tf1b1"),
/// Location:                     pulumi.String("global"),
/// Target:                       pulumi.String("projects/980109375338"),
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
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSetting;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingArgs;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingBinding;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingBindingArgs;
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
/// var basic = new GeminiGcpEnablementSetting("basic", GeminiGcpEnablementSettingArgs.builder()
/// .geminiGcpEnablementSettingId("ls-tf1")
/// .location("global")
/// .labels(Map.of("my_key", "my_value"))
/// .enableCustomerDataSharing(true)
/// .webGroundingType("WEB_GROUNDING_FOR_ENTERPRISE")
/// .build());
///
/// var example = new GeminiGcpEnablementSettingBinding("example", GeminiGcpEnablementSettingBindingArgs.builder()
/// .geminiGcpEnablementSettingId(basic.geminiGcpEnablementSettingId())
/// .settingBindingId("ls-tf1b1")
/// .location("global")
/// .target("projects/980109375338")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:gemini:GeminiGcpEnablementSetting
/// properties:
/// geminiGcpEnablementSettingId: ls-tf1
/// location: global
/// labels:
/// my_key: my_value
/// enableCustomerDataSharing: true
/// webGroundingType: WEB_GROUNDING_FOR_ENTERPRISE
/// example:
/// type: gcp:gemini:GeminiGcpEnablementSettingBinding
/// properties:
/// geminiGcpEnablementSettingId: ${basic.geminiGcpEnablementSettingId}
/// settingBindingId: ls-tf1b1
/// location: global
/// target: projects/980109375338
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GeminiGcpEnablementSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}/settingBindings/{{setting_binding_id}}`
///
/// * `{{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}`
///
/// * `{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}`
///
/// When using the `pulumi import` command, GeminiGcpEnablementSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}/settingBindings/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default {{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default {{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}
/// ```
class GeminiGcpEnablementSettingBinding extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> geminiGcpEnablementSettingId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{setting}/settingBindings/{setting_binding}
  late final Output<String> name;

  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  late final Output<String> product;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Id of the setting binding.
  late final Output<String> settingBindingId;

  /// Target of the binding.
  late final Output<String> target;

  /// Update time stamp.
  late final Output<String> updateTime;

  GeminiGcpEnablementSettingBinding(
    String name, {
    GeminiGcpEnablementSettingBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.geminiGcpEnablementSettingId =
        registerOutput<String>('geminiGcpEnablementSettingId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.product = registerOutput<String>('product');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.settingBindingId = registerOutput<String>('settingBindingId');
    this.target = registerOutput<String>('target');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
