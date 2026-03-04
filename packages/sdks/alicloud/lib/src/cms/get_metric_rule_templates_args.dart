// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_metric_rule_templates_get_metric_rule_templates_args_doc}
/// Arguments for getMetricRuleTemplates.
/// {@endtemplate}
/// {@macro pulumi_cms_get_metric_rule_templates_get_metric_rule_templates_args_doc}
class GetMetricRuleTemplatesArgs {
  /// Valid values: `true` or `false`. Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Metric Rule Template IDs.
  final pulumi.Input<List<String>>? ids;

  /// The name of the alert template. You can perform fuzzy search based on the template name.
  final pulumi.Input<String>? keyword;

  /// The name of the alert template.
  final pulumi.Input<String>? metricRuleTemplateName;

  /// A regex string to filter results by Metric Rule Template name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the alert template.
  final pulumi.Input<String>? templateId;

  /// Creates a new [GetMetricRuleTemplatesArgs].
  /// [enableDetails] Valid values: `true` or `false`. Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Metric Rule Template IDs.
  /// [keyword] The name of the alert template. You can perform fuzzy search based on the template name.
  /// [metricRuleTemplateName] The name of the alert template.
  /// [nameRegex] A regex string to filter results by Metric Rule Template name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [templateId] The ID of the alert template.
  GetMetricRuleTemplatesArgs({
    this.enableDetails,
    this.ids,
    this.keyword,
    this.metricRuleTemplateName,
    this.nameRegex,
    this.outputFile,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyword': ?keyword,
      'metricRuleTemplateName': ?metricRuleTemplateName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'templateId': ?templateId,
    };
  }

  factory GetMetricRuleTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesArgs(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricRuleTemplateName: (() {
        final guardedValue = map['metricRuleTemplateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
