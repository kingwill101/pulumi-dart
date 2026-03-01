// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_plan_report_delivery_channel.dart';
import 'report_plan_report_setting.dart';

/// {@template pulumi_backup_report_plan_report_plan_args_doc}
/// The set of arguments for ReportPlan.
/// {@endtemplate}
/// {@macro pulumi_backup_report_plan_report_plan_args_doc}
class ReportPlanArgs {
  /// The description of the report plan with a maximum of 1,024 characters
  final pulumi.Input<String>? description;
  /// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final pulumi.Input<ReportPlanReportDeliveryChannel> reportDeliveryChannel;
  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final pulumi.Input<ReportPlanReportSetting> reportSetting;
  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReportPlanArgs].
  /// [description] The description of the report plan with a maximum of 1,024 characters
  /// [name] The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reportDeliveryChannel] An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  /// [reportSetting] An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  /// [tags] Metadata that you can assign to help organize the report plans you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReportPlanArgs({
    String? description,
    String? name,
    String? region,
    required ReportPlanReportDeliveryChannel reportDeliveryChannel,
    required ReportPlanReportSetting reportSetting,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      reportDeliveryChannel = pulumi.Input.asInput<ReportPlanReportDeliveryChannel>(reportDeliveryChannel),
      reportSetting = pulumi.Input.asInput<ReportPlanReportSetting>(reportSetting),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'reportDeliveryChannel': pulumi.Input.mapInputValue<ReportPlanReportDeliveryChannel, Map<String, dynamic>>(reportDeliveryChannel, (value) => value.toMap()),
      'reportSetting': pulumi.Input.mapInputValue<ReportPlanReportSetting, Map<String, dynamic>>(reportSetting, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ReportPlanArgs.fromMap(Map<String, dynamic> map) {
    return ReportPlanArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reportDeliveryChannel: ReportPlanReportDeliveryChannel.fromMap((map['reportDeliveryChannel'] as Map).cast<String, dynamic>()),
      reportSetting: ReportPlanReportSetting.fromMap((map['reportSetting'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

