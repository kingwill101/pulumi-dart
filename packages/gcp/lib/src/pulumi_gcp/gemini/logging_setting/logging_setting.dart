import 'package:pulumi/pulumi.dart';
import 'logging_setting_args.dart';

/// The resource for managing Logging settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Logging Setting Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.LoggingSetting("example", {
/// loggingSettingId: "ls1-tf",
/// location: "global",
/// labels: {
/// my_key: "my_value",
/// },
/// logPromptsAndResponses: true,
/// logMetadata: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.LoggingSetting("example",
/// logging_setting_id="ls1-tf",
/// location="global",
/// labels={
/// "my_key": "my_value",
/// },
/// log_prompts_and_responses=True,
/// log_metadata=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Gemini.LoggingSetting("example", new()
/// {
/// LoggingSettingId = "ls1-tf",
/// Location = "global",
/// Labels =
/// {
/// { "my_key", "my_value" },
/// },
/// LogPromptsAndResponses = true,
/// LogMetadata = true,
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
/// _, err := gemini.NewLoggingSetting(ctx, "example", &gemini.LoggingSettingArgs{
/// LoggingSettingId: pulumi.String("ls1-tf"),
/// Location:         pulumi.String("global"),
/// Labels: pulumi.StringMap{
/// "my_key": pulumi.String("my_value"),
/// },
/// LogPromptsAndResponses: pulumi.Bool(true),
/// LogMetadata:            pulumi.Bool(true),
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
/// import com.pulumi.gcp.gemini.LoggingSetting;
/// import com.pulumi.gcp.gemini.LoggingSettingArgs;
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
/// var example = new LoggingSetting("example", LoggingSettingArgs.builder()
/// .loggingSettingId("ls1-tf")
/// .location("global")
/// .labels(Map.of("my_key", "my_value"))
/// .logPromptsAndResponses(true)
/// .logMetadata(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:gemini:LoggingSetting
/// properties:
/// loggingSettingId: ls1-tf
/// location: global
/// labels:
/// my_key: my_value
/// logPromptsAndResponses: true
/// logMetadata: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// LoggingSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}`
///
/// * `{{project}}/{{location}}/{{logging_setting_id}}`
///
/// * `{{location}}/{{logging_setting_id}}`
///
/// When using the `pulumi import` command, LoggingSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default {{project}}/{{location}}/{{logging_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default {{location}}/{{logging_setting_id}}
/// ```
class LoggingSetting extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Whether to log metadata.
  late final Output<bool?> logMetadata;

  /// Whether to log prompts and responses.
  late final Output<bool?> logPromptsAndResponses;

  /// Id of the Logging Setting.
  late final Output<String> loggingSettingId;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingsettings/{loggingsetting}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final Output<String> updateTime;

  LoggingSetting(
    String name, {
    LoggingSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSetting:LoggingSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.logMetadata = registerOutput<bool?>('logMetadata');
    this.logPromptsAndResponses =
        registerOutput<bool?>('logPromptsAndResponses');
    this.loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
