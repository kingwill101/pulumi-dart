import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_setting_binding_args.dart';

/// The resource for managing Logging setting bindings for Admin Control.
///
///
/// To get more information about LoggingSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Logging Setting Binding Basic
///
///
///
///
/// ## Import
///
/// LoggingSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}/settingBindings/{{setting_binding_id}}`
///
/// * `{{project}}/{{location}}/{{logging_setting_id}}/{{setting_binding_id}}`
///
/// * `{{location}}/{{logging_setting_id}}/{{setting_binding_id}}`
///
/// When using the `pulumi import` command, LoggingSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}/settingBindings/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default {{project}}/{{location}}/{{logging_setting_id}}/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default {{location}}/{{logging_setting_id}}/{{setting_binding_id}}
/// ```
class LoggingSettingBinding extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> loggingSettingId;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingSettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;

  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CODE_ASSIST`.
  late final pulumi.Output<String> product;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Id of the setting binding.
  late final pulumi.Output<String> settingBindingId;

  /// Target of the binding.
  late final pulumi.Output<String> target;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  LoggingSettingBinding(
    String name, {
    LoggingSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSettingBinding:LoggingSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    this.product = registerOutput<String>('product');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.settingBindingId = registerOutput<String>('settingBindingId');
    this.target = registerOutput<String>('target');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
