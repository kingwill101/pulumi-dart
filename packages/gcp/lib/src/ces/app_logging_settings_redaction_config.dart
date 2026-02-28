// ignore_for_file: unused_element, unnecessary_cast


class AppLoggingSettingsRedactionConfig {
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// instruct on how to de-identify content.
  /// Format:
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  final String? deidentifyTemplate;
  /// If true, redaction will be applied in various logging scenarios, including
  /// conversation history, Cloud Logging and audio recording.
  final bool? enableRedaction;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure
  /// detection of sensitive data types.
  /// Format:
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  final String? inspectTemplate;

  /// Creates a new [AppLoggingSettingsRedactionConfig].
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// [enableRedaction] If true, redaction will be applied in various logging scenarios, including
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure
  AppLoggingSettingsRedactionConfig({
    this.deidentifyTemplate,
    this.enableRedaction,
    this.inspectTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplate': ?deidentifyTemplate,
      'enableRedaction': ?enableRedaction,
      'inspectTemplate': ?inspectTemplate,
    };
  }

  factory AppLoggingSettingsRedactionConfig.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsRedactionConfig(
      deidentifyTemplate: map['deidentifyTemplate'] == null ? null : map['deidentifyTemplate'] as String,
      enableRedaction: map['enableRedaction'] == null ? null : map['enableRedaction'] as bool,
      inspectTemplate: map['inspectTemplate'] == null ? null : map['inspectTemplate'] as String,
    );
  }
}

