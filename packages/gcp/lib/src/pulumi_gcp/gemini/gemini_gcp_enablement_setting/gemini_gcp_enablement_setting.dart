import 'package:pulumi/pulumi.dart';
import 'gemini_gcp_enablement_setting_args.dart';

/// The resource for managing GeminiGcpEnablement settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Gemini Gcp Enablement Setting Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.GeminiGcpEnablementSetting("example", {
/// geminiGcpEnablementSettingId: "ls1-tf",
/// location: "global",
/// labels: {
/// my_key: "my_value",
/// },
/// enableCustomerDataSharing: true,
/// webGroundingType: "WEB_GROUNDING_FOR_ENTERPRISE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.GeminiGcpEnablementSetting("example",
/// gemini_gcp_enablement_setting_id="ls1-tf",
/// location="global",
/// labels={
/// "my_key": "my_value",
/// },
/// enable_customer_data_sharing=True,
/// web_grounding_type="WEB_GROUNDING_FOR_ENTERPRISE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Gemini.GeminiGcpEnablementSetting("example", new()
/// {
/// GeminiGcpEnablementSettingId = "ls1-tf",
/// Location = "global",
/// Labels =
/// {
/// { "my_key", "my_value" },
/// },
/// EnableCustomerDataSharing = true,
/// WebGroundingType = "WEB_GROUNDING_FOR_ENTERPRISE",
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
/// _, err := gemini.NewGeminiGcpEnablementSetting(ctx, "example", &gemini.GeminiGcpEnablementSettingArgs{
/// GeminiGcpEnablementSettingId: pulumi.String("ls1-tf"),
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
/// var example = new GeminiGcpEnablementSetting("example", GeminiGcpEnablementSettingArgs.builder()
/// .geminiGcpEnablementSettingId("ls1-tf")
/// .location("global")
/// .labels(Map.of("my_key", "my_value"))
/// .enableCustomerDataSharing(true)
/// .webGroundingType("WEB_GROUNDING_FOR_ENTERPRISE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:gemini:GeminiGcpEnablementSetting
/// properties:
/// geminiGcpEnablementSettingId: ls1-tf
/// location: global
/// labels:
/// my_key: my_value
/// enableCustomerDataSharing: true
/// webGroundingType: WEB_GROUNDING_FOR_ENTERPRISE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GeminiGcpEnablementSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}`
///
/// * `{{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}`
///
/// * `{{location}}/{{gemini_gcp_enablement_setting_id}}`
///
/// When using the `pulumi import` command, GeminiGcpEnablementSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default {{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default {{location}}/{{gemini_gcp_enablement_setting_id}}
/// ```
class GeminiGcpEnablementSetting extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// (Optional, Deprecated)
  /// Whether web grounding should be disabled.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`disableWebGrounding`" pulumi-lang-dotnet="`DisableWebGrounding`" pulumi-lang-go="`disableWebGrounding`" pulumi-lang-python="`disable_web_grounding`" pulumi-lang-yaml="`disableWebGrounding`" pulumi-lang-java="`disableWebGrounding`">`disable_web_grounding`</span> is deprecated. Use <span pulumi-lang-nodejs="`webGroundingType`" pulumi-lang-dotnet="`WebGroundingType`" pulumi-lang-go="`webGroundingType`" pulumi-lang-python="`web_grounding_type`" pulumi-lang-yaml="`webGroundingType`" pulumi-lang-java="`webGroundingType`">`web_grounding_type`</span> instead.
  late final Output<bool?> disableWebGrounding;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether customer data sharing should be enabled.
  late final Output<bool?> enableCustomerDataSharing;

  /// Id of the Gemini Gcp Enablement setting.
  late final Output<String> geminiGcpEnablementSettingId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{geminiGcpEnablementSetting}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final Output<String> updateTime;

  /// Web grounding type.
  /// Possible values:
  /// GROUNDING_WITH_GOOGLE_SEARCH
  /// WEB_GROUNDING_FOR_ENTERPRISE
  late final Output<String?> webGroundingType;

  GeminiGcpEnablementSetting(
    String name, {
    GeminiGcpEnablementSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disableWebGrounding = registerOutput<bool?>('disableWebGrounding');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableCustomerDataSharing =
        registerOutput<bool?>('enableCustomerDataSharing');
    this.geminiGcpEnablementSettingId =
        registerOutput<String>('geminiGcpEnablementSettingId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.webGroundingType = registerOutput<String?>('webGroundingType');
  }
}
