// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationTemplateConfiguration {
  /// Template Annotations.
  final pulumi.Input<Map<String, String>> annotations;
  /// Template Language.
  final pulumi.Input<String> lang;
  /// Template ID.
  final pulumi.Input<String> templateId;
  /// Template Variables.
  final pulumi.Input<Map<String, String>> tokens;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final pulumi.Input<String> type;
  /// Fixed as 2.0.
  final pulumi.Input<String> version;

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
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      lang: pulumi.Input.fromValue(map['lang'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      tokens: pulumi.Input.fromValue((map['tokens'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

