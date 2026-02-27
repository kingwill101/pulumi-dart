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
///
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
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
