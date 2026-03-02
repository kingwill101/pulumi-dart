// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_plan_report_delivery_channel.dart';
import 'report_plan_report_setting.dart';

/// Input properties used for looking up and filtering ReportPlan resources.
class ReportPlanState {
  /// The ARN of the backup report plan.
  final pulumi.Input<String>? arn;
  /// The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  final pulumi.Input<String>? creationTime;
  /// The deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  final pulumi.Input<String>? deploymentStatus;
  /// The description of the report plan with a maximum of 1,024 characters
  final pulumi.Input<String>? description;
  /// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final pulumi.Input<ReportPlanReportDeliveryChannel>? reportDeliveryChannel;
  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final pulumi.Input<ReportPlanReportSetting>? reportSetting;
  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ReportPlanState].
  /// [arn] The ARN of the backup report plan.
  /// [creationTime] The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] The deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  /// [description] The description of the report plan with a maximum of 1,024 characters
  /// [name] The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reportDeliveryChannel] An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  /// [reportSetting] An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  /// [tags] Metadata that you can assign to help organize the report plans you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ReportPlanState({
    this.arn,
    this.creationTime,
    this.deploymentStatus,
    this.description,
    this.name,
    this.region,
    this.reportDeliveryChannel,
    this.reportSetting,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'deploymentStatus': ?deploymentStatus,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'reportDeliveryChannel': ?pulumi.Input.mapOptionalInputValue<ReportPlanReportDeliveryChannel, Map<String, dynamic>>(reportDeliveryChannel, (value) => value.toMap()),
      'reportSetting': ?pulumi.Input.mapOptionalInputValue<ReportPlanReportSetting, Map<String, dynamic>>(reportSetting, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ReportPlanState.fromMap(Map<String, dynamic> map) {
    return ReportPlanState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      creationTime: map['creationTime'] == null ? null : ((map['creationTime'] as String).input()).input(),
      deploymentStatus: map['deploymentStatus'] == null ? null : ((map['deploymentStatus'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      reportDeliveryChannel: map['reportDeliveryChannel'] == null ? null : ((ReportPlanReportDeliveryChannel.fromMap((map['reportDeliveryChannel']! as Map).cast<String, dynamic>())).input()).input(),
      reportSetting: map['reportSetting'] == null ? null : ((ReportPlanReportSetting.fromMap((map['reportSetting']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

