// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_plan_report_delivery_channel.dart';
import 'get_report_plan_report_setting.dart';

/// Result data returned by getReportPlan.
class GetReportPlanResult {
  /// ARN of the backup report plan.
  final String? arn;
  /// Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  final String? creationTime;
  /// Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  final String? deploymentStatus;
  /// Description of the report plan.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final List<GetReportPlanReportDeliveryChannel>? reportDeliveryChannels;
  /// Object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final List<GetReportPlanReportSetting>? reportSettings;
  /// Metadata that you can assign to help organize the report plans you create.
  final Map<String, String>? tags;

  /// Creates a new [GetReportPlanResult].
  /// [arn] ARN of the backup report plan.
  /// [creationTime] Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  /// [description] Description of the report plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [reportDeliveryChannels] Object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  /// [reportSettings] Object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  const GetReportPlanResult({
    this.arn,
    this.creationTime,
    this.deploymentStatus,
    this.description,
    this.id,
    this.name,
    this.region,
    this.reportDeliveryChannels,
    this.reportSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'deploymentStatus': ?deploymentStatus,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'reportDeliveryChannels': ?(() { final guardedValue = reportDeliveryChannels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReportPlanReportDeliveryChannel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reportSettings': ?(() { final guardedValue = reportSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReportPlanReportSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetReportPlanResult.fromMap(Map<String, dynamic> map) {
    return GetReportPlanResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reportDeliveryChannels: (() { final guardedValue = map['reportDeliveryChannels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReportPlanReportDeliveryChannel>(guardedValue, (value) => GetReportPlanReportDeliveryChannel.fromMap((value as Map).cast<String, dynamic>())); })(),
      reportSettings: (() { final guardedValue = map['reportSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReportPlanReportSetting>(guardedValue, (value) => GetReportPlanReportSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
