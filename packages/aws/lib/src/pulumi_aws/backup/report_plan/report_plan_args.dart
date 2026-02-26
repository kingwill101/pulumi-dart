// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../report_plan_report_delivery_channel/report_plan_report_delivery_channel.dart';
import '../report_plan_report_setting/report_plan_report_setting.dart';

/// The set of arguments for ReportPlan.
class ReportPlanArgs {
  /// The description of the report plan with a maximum of 1,024 characters
  final Input<String>? description;

  /// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final Input<ReportPlanReportDeliveryChannel> reportDeliveryChannel;

  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final Input<ReportPlanReportSetting> reportSetting;

  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ReportPlanArgs({
    this.description,
    this.name,
    this.region,
    required this.reportDeliveryChannel,
    required this.reportSetting,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['reportDeliveryChannel'] = Input.mapInputValue<
        ReportPlanReportDeliveryChannel,
        Map<String, dynamic>>(reportDeliveryChannel, (value) => value.toMap());
    map['reportSetting'] =
        Input.mapInputValue<ReportPlanReportSetting, Map<String, dynamic>>(
            reportSetting, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReportPlanArgs.fromMap(Map<String, dynamic> map) {
    return ReportPlanArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      reportDeliveryChannel: Input.asInput<ReportPlanReportDeliveryChannel>(
          map['reportDeliveryChannel']),
      reportSetting:
          Input.asInput<ReportPlanReportSetting>(map['reportSetting']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
