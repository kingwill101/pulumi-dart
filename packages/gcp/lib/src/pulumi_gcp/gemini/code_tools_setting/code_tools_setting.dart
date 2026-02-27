import 'package:pulumi/pulumi.dart' as pulumi;
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
///
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
class CodeToolsSetting extends pulumi.CustomResource {
  /// Id of the Code Tools Setting.
  late final pulumi.Output<String> codeToolsSettingId;

  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  late final pulumi.Output<List<CodeToolsSettingEnabledTool>> enabledTools;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/codeToolsSettings/{codeToolsSetting}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  CodeToolsSetting(
    String name, {
    CodeToolsSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeToolsSetting:CodeToolsSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.codeToolsSettingId = registerOutput<String>('codeToolsSettingId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enabledTools =
        registerOutput<List<CodeToolsSettingEnabledTool>>('enabledTools');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
