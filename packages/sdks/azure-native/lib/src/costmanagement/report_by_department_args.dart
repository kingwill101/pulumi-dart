// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_definition.dart';
import 'report_delivery_info.dart';
import 'report_schedule.dart';

/// {@template pulumi_costmanagement_report_by_department_args_doc}
/// The set of arguments for ReportByDepartment.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_report_by_department_args_doc}
class ReportByDepartmentArgs {
  /// Has definition for the report.
  final pulumi.Input<ReportDefinition> definition;
  /// Has delivery information for the report.
  final pulumi.Input<ReportDeliveryInfo> deliveryInfo;
  /// Department ID
  final pulumi.Input<String> departmentId;
  /// The format of the report being delivered.
  final pulumi.Input<String>? format;
  /// Report Name.
  final pulumi.Input<String>? reportName;
  /// Has schedule information for the report.
  final pulumi.Input<ReportSchedule>? schedule;

  /// Creates a new [ReportByDepartmentArgs].
  /// [definition] Has definition for the report.
  /// [deliveryInfo] Has delivery information for the report.
  /// [departmentId] Department ID
  /// [format] The format of the report being delivered.
  /// [reportName] Report Name.
  /// [schedule] Has schedule information for the report.
  ReportByDepartmentArgs({
    required pulumi.Output<ReportDefinition> definition,
    required pulumi.Output<ReportDeliveryInfo> deliveryInfo,
    required pulumi.Output<String> departmentId,
    pulumi.Output<String>? format,
    pulumi.Output<String>? reportName,
    pulumi.Output<ReportSchedule>? schedule,
  }) :
      definition = pulumi.Input.asInput<ReportDefinition>(definition),
      deliveryInfo = pulumi.Input.asInput<ReportDeliveryInfo>(deliveryInfo),
      departmentId = pulumi.Input.asInput<String>(departmentId),
      format = pulumi.Input.asOptionalInput<String>(format),
      reportName = pulumi.Input.asOptionalInput<String>(reportName),
      schedule = pulumi.Input.asOptionalInput<ReportSchedule>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ReportDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'deliveryInfo': pulumi.Input.mapInputValue<ReportDeliveryInfo, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'departmentId': departmentId,
      'format': ?format,
      'reportName': ?reportName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ReportSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory ReportByDepartmentArgs.fromMap(Map<String, dynamic> map) {
    return ReportByDepartmentArgs(
      definition: pulumi.Output.create<ReportDefinition>(ReportDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      deliveryInfo: pulumi.Output.create<ReportDeliveryInfo>(ReportDeliveryInfo.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>())),
      departmentId: pulumi.Output.create<String>(map['departmentId'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      reportName: map['reportName'] == null ? null : pulumi.Output.create<String>(map['reportName'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<ReportSchedule>(ReportSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
    );
  }
}

