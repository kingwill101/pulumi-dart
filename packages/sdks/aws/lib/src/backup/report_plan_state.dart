// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_plan_report_delivery_channel.dart';
import 'report_plan_report_setting.dart';

/// Input properties used for looking up and filtering ReportPlan resources.
class ReportPlanState {
  /// ARN of the backup report plan.
  final pulumi.Input<String?>? arn;
  /// Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  final pulumi.Input<String?>? creationTime;
  /// Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  final pulumi.Input<String?>? deploymentStatus;
  /// Description of the report plan with a maximum of 1,024 characters.
  final pulumi.Input<String?>? description;
  /// Unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final pulumi.Input<ReportPlanReportDeliveryChannel?>? reportDeliveryChannel;
  /// Object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final pulumi.Input<ReportPlanReportSetting?>? reportSetting;
  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ReportPlanState].
  /// [arn] ARN of the backup report plan.
  /// [creationTime] Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  /// [description] Description of the report plan with a maximum of 1,024 characters.
  /// [name] Unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reportDeliveryChannel] Object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  /// [reportSetting] Object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  /// [tags] Metadata that you can assign to help organize the report plans you create. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ReportPlanState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportDeliveryChannel: (() { final guardedValue = map['reportDeliveryChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportPlanReportDeliveryChannel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reportSetting: (() { final guardedValue = map['reportSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportPlanReportSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
