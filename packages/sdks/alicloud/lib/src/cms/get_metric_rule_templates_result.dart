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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricRuleTemplateName: (() { final guardedValue = map['metricRuleTemplateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templates: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplate>(map['templates']!, (value) => GetMetricRuleTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

