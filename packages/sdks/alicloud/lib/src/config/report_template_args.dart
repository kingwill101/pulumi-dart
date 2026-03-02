// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_template_report_scope.dart';

/// {@template pulumi_config_report_template_report_template_args_doc}
/// The set of arguments for ReportTemplate.
/// {@endtemplate}
/// {@macro pulumi_config_report_template_report_template_args_doc}
class ReportTemplateArgs {
  /// Report Format
  final pulumi.Input<String>? reportFileFormats;
  /// Report Aggregation Granularity
  final pulumi.Input<String>? reportGranularity;
  /// This property does not have a description in the spec, please add it before generating code.
  final pulumi.Input<String>? reportLanguage;
  /// Report range, yes and logic between multiple sets of k-v pairs. See `report_scope` below.
  final pulumi.Input<List<ReportTemplateReportScope>>? reportScopes;
  /// Report Template Description
  final pulumi.Input<String>? reportTemplateDescription;
  /// Report Template Name
  final pulumi.Input<String> reportTemplateName;
  /// Report subscription frequency. If this field is not empty, it is a Cron expression in Quartz format triggered by the subscription notification.
  ///
  /// The format is: Seconds, time, day, month, week. The following are examples of commonly used Cron expressions:
  /// - Execute at 0 o'clock every day: 0 0 0 * *?
  /// - Every Monday at 15: 30: 0 30 15? * MON
  /// - Execute at 2 o'clock on the 1st of each month: 0 0 2 1 *?
  ///
  /// Among them:
  /// -"*" Indicates any value
  /// - What-? Used for day and week fields, indicating that no specific value is specified
  /// - MON means Monday
  ///
  /// > **NOTE:**  The trigger time is UTC +8, and the settings of the cron expression can be converted according to the time zone.
  ///
  /// > **NOTE:**  It can only be triggered according to the cron expression time as much as possible. The cron expression limits the same template to trigger at most one notification per day.
  final pulumi.Input<String>? subscriptionFrequency;

  /// Creates a new [ReportTemplateArgs].
  /// [reportFileFormats] Report Format
  /// [reportGranularity] Report Aggregation Granularity
  /// [reportLanguage] This property does not have a description in the spec, please add it before generating code.
  /// [reportScopes] Report range, yes and logic between multiple sets of k-v pairs. See `report_scope` below.
  /// [reportTemplateDescription] Report Template Description
  /// [reportTemplateName] Report Template Name
  /// [subscriptionFrequency] Report subscription frequency. If this field is not empty, it is a Cron expression in Quartz format triggered by the subscription notification.
  ReportTemplateArgs({
    this.reportFileFormats,
    this.reportGranularity,
    this.reportLanguage,
    this.reportScopes,
    this.reportTemplateDescription,
    required this.reportTemplateName,
    this.subscriptionFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportFileFormats': ?reportFileFormats,
      'reportGranularity': ?reportGranularity,
      'reportLanguage': ?reportLanguage,
      'reportScopes': ?pulumi.Input.mapOptionalInputValue<List<ReportTemplateReportScope>, List<Map<String, dynamic>>>(reportScopes, (value) => pulumi.Input.encodeList<ReportTemplateReportScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportTemplateDescription': ?reportTemplateDescription,
      'reportTemplateName': reportTemplateName,
      'subscriptionFrequency': ?subscriptionFrequency,
    };
  }

  factory ReportTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ReportTemplateArgs(
      reportFileFormats: map['reportFileFormats'] == null ? null : (map['reportFileFormats']! as String).input(),
      reportGranularity: map['reportGranularity'] == null ? null : (map['reportGranularity']! as String).input(),
      reportLanguage: map['reportLanguage'] == null ? null : (map['reportLanguage']! as String).input(),
      reportScopes: map['reportScopes'] == null ? null : (pulumi.Input.decodeList<ReportTemplateReportScope>(map['reportScopes']!, (value) => ReportTemplateReportScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reportTemplateDescription: map['reportTemplateDescription'] == null ? null : (map['reportTemplateDescription']! as String).input(),
      reportTemplateName: (map['reportTemplateName'] as String).input(),
      subscriptionFrequency: map['subscriptionFrequency'] == null ? null : (map['subscriptionFrequency']! as String).input(),
    );
  }
}

