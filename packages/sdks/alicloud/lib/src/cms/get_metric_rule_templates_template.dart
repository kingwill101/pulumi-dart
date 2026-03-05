// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template_alert_template.dart';

class GetMetricRuleTemplatesTemplate {
  /// The details of alert rules that are generated based on the alert template.
  final pulumi.Input<List<GetMetricRuleTemplatesTemplateAlertTemplate>> alertTemplates;
  /// The description of the alert template.
  final pulumi.Input<String> description;
  /// GroupId.
  final pulumi.Input<String> groupId;
  /// The ID of the Metric Rule Template.
  final pulumi.Input<String> id;
  /// The name of the alert template.
  final pulumi.Input<String> metricRuleTemplateName;
  /// The version of the alert template.
  ///
  /// &gt; **NOTE:** The version changes with the number of times that the alert template is modified.
  final pulumi.Input<String> restVersion;
  /// The ID of the alert template.
  final pulumi.Input<String> templateId;

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
      'alertTemplates': pulumi.Input.mapInputValue<List<GetMetricRuleTemplatesTemplateAlertTemplate>, List<Map<String, dynamic>>>(alertTemplates, (value) => pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      alertTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplate>(map['alertTemplates']!, (value) => GetMetricRuleTemplatesTemplateAlertTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      metricRuleTemplateName: pulumi.Input.fromValue(map['metricRuleTemplateName'] as String),
      restVersion: pulumi.Input.fromValue(map['restVersion'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
    );
  }
}

