// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_plan_report_delivery_channel.dart';
import 'get_report_plan_report_setting.dart';

/// Result data returned by getReportPlan.
class GetReportPlanResult {
  /// ARN of the backup report plan.
  final String arn;

  /// Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  final String creationTime;

  /// Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  final String deploymentStatus;

  /// Description of the report plan.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  final List<GetReportPlanReportDeliveryChannel> reportDeliveryChannels;

  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  final List<GetReportPlanReportSetting> reportSettings;

  /// Metadata that you can assign to help organize the report plans you create.
  final Map<String, String> tags;

  /// Creates a new [GetReportPlanResult].
  /// [arn] ARN of the backup report plan.
  /// [creationTime] Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  /// [deploymentStatus] Deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  /// [description] Description of the report plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [reportDeliveryChannels] An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  /// [reportSettings] An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  GetReportPlanResult({
    required this.arn,
    required this.creationTime,
    required this.deploymentStatus,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.reportDeliveryChannels,
    required this.reportSettings,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTime': creationTime,
      'deploymentStatus': deploymentStatus,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
      'reportDeliveryChannels':
          pulumi.Input.encodeList<
            GetReportPlanReportDeliveryChannel,
            Map<String, dynamic>
          >(reportDeliveryChannels, (value) => value.toMap()),
      'reportSettings':
          pulumi.Input.encodeList<
            GetReportPlanReportSetting,
            Map<String, dynamic>
          >(reportSettings, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetReportPlanResult.fromMap(Map<String, dynamic> map) {
    return GetReportPlanResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      reportDeliveryChannels:
          pulumi.Input.decodeList<GetReportPlanReportDeliveryChannel>(
            map['reportDeliveryChannels']!,
            (value) => GetReportPlanReportDeliveryChannel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      reportSettings: pulumi.Input.decodeList<GetReportPlanReportSetting>(
        map['reportSettings']!,
        (value) => GetReportPlanReportSetting.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
