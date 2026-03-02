// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_definition.dart';
import 'report_delivery_info.dart';
import 'report_schedule.dart';

/// {@template pulumi_costmanagement_report_by_billing_account_args_doc}
/// The set of arguments for ReportByBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_report_by_billing_account_args_doc}
class ReportByBillingAccountArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// Has definition for the report.
  final pulumi.Input<ReportDefinition> definition;
  /// Has delivery information for the report.
  final pulumi.Input<ReportDeliveryInfo> deliveryInfo;
  /// The format of the report being delivered.
  final pulumi.Input<String>? format;
  /// Report Name.
  final pulumi.Input<String>? reportName;
  /// Has schedule information for the report.
  final pulumi.Input<ReportSchedule>? schedule;

  /// Creates a new [ReportByBillingAccountArgs].
  /// [billingAccountId] BillingAccount ID
  /// [definition] Has definition for the report.
  /// [deliveryInfo] Has delivery information for the report.
  /// [format] The format of the report being delivered.
  /// [reportName] Report Name.
  /// [schedule] Has schedule information for the report.
  ReportByBillingAccountArgs({
    required this.billingAccountId,
    required this.definition,
    required this.deliveryInfo,
    this.format,
    this.reportName,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'definition': pulumi.Input.mapInputValue<ReportDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'deliveryInfo': pulumi.Input.mapInputValue<ReportDeliveryInfo, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'format': ?format,
      'reportName': ?reportName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ReportSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory ReportByBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return ReportByBillingAccountArgs(
      billingAccountId: (map['billingAccountId'] as String).input(),
      definition: (ReportDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())).input(),
      deliveryInfo: (ReportDeliveryInfo.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      reportName: map['reportName'] == null ? null : (map['reportName']! as String).input(),
      schedule: map['schedule'] == null ? null : (ReportSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

