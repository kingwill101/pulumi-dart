import 'package:pulumi/pulumi.dart';
import 'code_tools_setting_binding_args.dart';

/// The resource for managing CodeTools setting bindings for Admin Control.
///
///
/// To get more information about CodeToolsSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Code Tools Setting Binding Basic
///
///
///
///
/// ## Import
///
/// CodeToolsSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}/settingBindings/{{setting_binding_id}}`
///
/// * `{{project}}/{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}`
///
/// * `{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}`
///
/// When using the `pulumi import` command, CodeToolsSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}/settingBindings/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default {{project}}/{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default {{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}
/// ```
class CodeToolsSettingBinding extends CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> codeToolsSettingId;

  /// Create time stamp.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/codeToolsSettings/{setting}/settingBindings/{setting_binding}
  late final Output<String> name;

  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CODE_ASSIST`.
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

  CodeToolsSettingBinding(
    String name, {
    CodeToolsSettingBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeToolsSettingId = registerOutput<String>('codeToolsSettingId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
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
