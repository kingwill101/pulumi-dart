// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_definition.dart';
import 'report_delivery_info.dart';
import 'report_schedule.dart';

/// {@template pulumi_costmanagement_report_by_resource_group_name_args_doc}
/// The set of arguments for ReportByResourceGroupName.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_report_by_resource_group_name_args_doc}
class ReportByResourceGroupNameArgs {
  /// Has definition for the report.
  final pulumi.Input<ReportDefinition> definition;
  /// Has delivery information for the report.
  final pulumi.Input<ReportDeliveryInfo> deliveryInfo;
  /// The format of the report being delivered.
  final pulumi.Input<String>? format;
  /// Report Name.
  final pulumi.Input<String>? reportName;
  /// Azure Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Has schedule information for the report.
  final pulumi.Input<ReportSchedule>? schedule;

  /// Creates a new [ReportByResourceGroupNameArgs].
  /// [definition] Has definition for the report.
  /// [deliveryInfo] Has delivery information for the report.
  /// [format] The format of the report being delivered.
  /// [reportName] Report Name.
  /// [resourceGroupName] Azure Resource Group Name.
  /// [schedule] Has schedule information for the report.
  ReportByResourceGroupNameArgs({
    required ReportDefinition definition,
    required ReportDeliveryInfo deliveryInfo,
    String? format,
    String? reportName,
    required String resourceGroupName,
    ReportSchedule? schedule,
  }) :
      definition = pulumi.Input.asInput<ReportDefinition>(definition),
      deliveryInfo = pulumi.Input.asInput<ReportDeliveryInfo>(deliveryInfo),
      format = pulumi.Input.asOptionalInput<String>(format),
      reportName = pulumi.Input.asOptionalInput<String>(reportName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedule = pulumi.Input.asOptionalInput<ReportSchedule>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ReportDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'deliveryInfo': pulumi.Input.mapInputValue<ReportDeliveryInfo, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'format': ?format,
      'reportName': ?reportName,
      'resourceGroupName': resourceGroupName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ReportSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory ReportByResourceGroupNameArgs.fromMap(Map<String, dynamic> map) {
    return ReportByResourceGroupNameArgs(
      definition: ReportDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>()),
      deliveryInfo: ReportDeliveryInfo.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : map['format'] as String,
      reportName: map['reportName'] == null ? null : map['reportName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schedule: map['schedule'] == null ? null : ReportSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

