// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template_alert_template.dart';

class GetMetricRuleTemplatesTemplate {
  /// The details of alert rules that are generated based on the alert template.
  final List<GetMetricRuleTemplatesTemplateAlertTemplate> alertTemplates;
  /// The description of the alert template.
  final String description;
  /// GroupId.
  final String groupId;
  /// The ID of the Metric Rule Template.
  final String id;
  /// The name of the alert template.
  final String metricRuleTemplateName;
  /// The version of the alert template.
  ///
  /// > **NOTE:** The version changes with the number of times that the alert template is modified.
  final String restVersion;
  /// The ID of the alert template.
  final String templateId;

  /// Creates a new [GetMetricRuleTemplatesTemplate].
  /// [alertTemplates] The details of alert rules that are generated based on the alert template.
  /// [description] The description of the alert template.
  /// [groupId] GroupId.
  /// [id] The ID of the Metric Rule Template.
  /// [metricRuleTemplateName] The name of the alert template.
  /// [restVersion] The version of the alert template.
  /// [templateId] The ID of the alert template.
  GetMetricRuleTemplatesTemplate({
    required this.alertTemplates,
    required this.description,
    required this.groupId,
    required this.id,
    required this.metricRuleTemplateName,
    required this.restVersion,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertTemplates': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplate, Map<String, dynamic>>(alertTemplates, (value) => value.toMap()),
      'description': description,
      'groupId': groupId,
      'id': id,
      'metricRuleTemplateName': metricRuleTemplateName,
      'restVersion': restVersion,
      'templateId': templateId,
    };
  }

  factory GetMetricRuleTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplate(
      alertTemplates: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplate>(map['alertTemplates'], (value) => GetMetricRuleTemplatesTemplateAlertTemplate.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      metricRuleTemplateName: map['metricRuleTemplateName'] as String,
      restVersion: map['restVersion'] as String,
      templateId: map['templateId'] as String,
    );
  }
}

