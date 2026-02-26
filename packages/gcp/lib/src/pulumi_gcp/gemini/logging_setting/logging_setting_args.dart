// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LoggingSetting.
class LoggingSettingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Whether to log metadata.
  final Input<bool>? logMetadata;

  /// Whether to log prompts and responses.
  final Input<bool>? logPromptsAndResponses;

  /// Id of the Logging Setting.
  final Input<String> loggingSettingId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      logMetadata: Input.asOptionalInput<bool>(map['logMetadata']),
      logPromptsAndResponses:
          Input.asOptionalInput<bool>(map['logPromptsAndResponses']),
      loggingSettingId: Input.asInput<String>(map['loggingSettingId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
