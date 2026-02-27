// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LoggingSetting.
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

  LoggingSettingArgs({
    this.labels,
    required this.location,
    this.logMetadata,
    this.logPromptsAndResponses,
    required this.loggingSettingId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final logMetadataValue = logMetadata;
    if (logMetadataValue != null) {
      map['logMetadata'] = logMetadataValue;
    }
    final logPromptsAndResponsesValue = logPromptsAndResponses;
    if (logPromptsAndResponsesValue != null) {
      map['logPromptsAndResponses'] = logPromptsAndResponsesValue;
    }
    map['loggingSettingId'] = loggingSettingId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory LoggingSettingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingSettingArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      logMetadata: pulumi.Input.asOptionalInput<bool>(map['logMetadata']),
      logPromptsAndResponses:
          pulumi.Input.asOptionalInput<bool>(map['logPromptsAndResponses']),
      loggingSettingId: pulumi.Input.asInput<String>(map['loggingSettingId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
