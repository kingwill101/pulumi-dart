// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationTemplateConfiguration {
  /// Template Annotations.
  final Map<String, String> annotations;
  /// Template Language.
  final String lang;
  /// Template ID.
  final String templateId;
  /// Template Variables.
  final Map<String, String> tokens;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final String type;
  /// Fixed as 2.0.
  final String version;

  /// Creates a new [GetAlertsAlertConfigurationTemplateConfiguration].
  /// [annotations] Template Annotations.
  /// [lang] Template Language.
  /// [templateId] Template ID.
  /// [tokens] Template Variables.
  /// [type] Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  /// [version] Fixed as 2.0.
  GetAlertsAlertConfigurationTemplateConfiguration({
    required this.annotations,
    required this.lang,
    required this.templateId,
    required this.tokens,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'lang': lang,
      'templateId': templateId,
      'tokens': tokens,
      'type': type,
      'version': version,
    };
  }

  factory GetAlertsAlertConfigurationTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationTemplateConfiguration(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      lang: map['lang'] as String,
      templateId: map['templateId'] as String,
      tokens: (map['tokens'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

