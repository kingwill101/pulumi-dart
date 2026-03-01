// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_logging_setting_logging_setting_args_doc}
/// The set of arguments for LoggingSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_logging_setting_logging_setting_args_doc}
class LoggingSettingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Whether to log metadata.
  final pulumi.Input<bool>? logMetadata;
  /// Whether to log prompts and responses.
  final pulumi.Input<bool>? logPromptsAndResponses;
  /// Id of the Logging Setting.
  final pulumi.Input<String> loggingSettingId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [LoggingSettingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logMetadata] Whether to log metadata.
  /// [logPromptsAndResponses] Whether to log prompts and responses.
  /// [loggingSettingId] Id of the Logging Setting.
  /// [project] The ID of the project in which the resource belongs.
  LoggingSettingArgs({
    Map<String, String>? labels,
    required String location,
    bool? logMetadata,
    bool? logPromptsAndResponses,
    required String loggingSettingId,
    String? project,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      logMetadata = pulumi.Input.asOptionalInput<bool>(logMetadata),
      logPromptsAndResponses = pulumi.Input.asOptionalInput<bool>(logPromptsAndResponses),
      loggingSettingId = pulumi.Input.asInput<String>(loggingSettingId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'logMetadata': ?logMetadata,
      'logPromptsAndResponses': ?logPromptsAndResponses,
      'loggingSettingId': loggingSettingId,
      'project': ?project,
    };
  }

  factory LoggingSettingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingSettingArgs(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      logMetadata: map['logMetadata'] == null ? null : map['logMetadata'] as bool,
      logPromptsAndResponses: map['logPromptsAndResponses'] == null ? null : map['logPromptsAndResponses'] as bool,
      loggingSettingId: map['loggingSettingId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

