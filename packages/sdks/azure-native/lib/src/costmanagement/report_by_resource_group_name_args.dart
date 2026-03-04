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
    required this.definition,
    required this.deliveryInfo,
    this.format,
    this.reportName,
    required this.resourceGroupName,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition':
          pulumi.Input.mapInputValue<ReportDefinition, Map<String, dynamic>>(
            definition,
            (value) => value.toMap(),
          ),
      'deliveryInfo':
          pulumi.Input.mapInputValue<ReportDeliveryInfo, Map<String, dynamic>>(
            deliveryInfo,
            (value) => value.toMap(),
          ),
      'format': ?format,
      'reportName': ?reportName,
      'resourceGroupName': resourceGroupName,
      'schedule':
          ?pulumi.Input.mapOptionalInputValue<
            ReportSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
    };
  }

  factory ReportByResourceGroupNameArgs.fromMap(Map<String, dynamic> map) {
    return ReportByResourceGroupNameArgs(
      definition: pulumi.Input.fromValue(
        ReportDefinition.fromMap(
          (map['definition']! as Map).cast<String, dynamic>(),
        ),
      ),
      deliveryInfo: pulumi.Input.fromValue(
        ReportDeliveryInfo.fromMap(
          (map['deliveryInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reportName: (() {
        final guardedValue = map['reportName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
