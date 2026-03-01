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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? deploymentStatus,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ReportPlanReportDeliveryChannel>? reportDeliveryChannel,
    pulumi.Output<ReportPlanReportSetting>? reportSetting,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      deploymentStatus = pulumi.Input.asOptionalInput<String>(deploymentStatus),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      reportDeliveryChannel = pulumi.Input.asOptionalInput<ReportPlanReportDeliveryChannel>(reportDeliveryChannel),
      reportSetting = pulumi.Input.asOptionalInput<ReportPlanReportSetting>(reportSetting),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      deploymentStatus: map['deploymentStatus'] == null ? null : pulumi.Output.create<String>(map['deploymentStatus'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reportDeliveryChannel: map['reportDeliveryChannel'] == null ? null : pulumi.Output.create<ReportPlanReportDeliveryChannel>(ReportPlanReportDeliveryChannel.fromMap((map['reportDeliveryChannel'] as Map).cast<String, dynamic>())),
      reportSetting: map['reportSetting'] == null ? null : pulumi.Output.create<ReportPlanReportSetting>(ReportPlanReportSetting.fromMap((map['reportSetting'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

