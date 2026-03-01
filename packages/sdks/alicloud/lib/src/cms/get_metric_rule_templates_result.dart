// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template.dart';

/// Result data returned by getMetricRuleTemplates.
class GetMetricRuleTemplatesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? metricRuleTemplateName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? templateId;
  final List<GetMetricRuleTemplatesTemplate> templates;

  /// Creates a new [GetMetricRuleTemplatesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [metricRuleTemplateName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [templateId] Optional.
  /// [templates] Required.
  GetMetricRuleTemplatesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyword,
    this.metricRuleTemplateName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.templateId,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'metricRuleTemplateName': ?metricRuleTemplateName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'templateId': ?templateId,
      'templates': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetMetricRuleTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      metricRuleTemplateName: map['metricRuleTemplateName'] == null ? null : map['metricRuleTemplateName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      templates: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplate>(map['templates'], (value) => GetMetricRuleTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

