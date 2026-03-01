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
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<ReportDefinition> definition,
    required pulumi.Output<ReportDeliveryInfo> deliveryInfo,
    pulumi.Output<String>? format,
    pulumi.Output<String>? reportName,
    pulumi.Output<ReportSchedule>? schedule,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      definition = pulumi.Input.asInput<ReportDefinition>(definition),
      deliveryInfo = pulumi.Input.asInput<ReportDeliveryInfo>(deliveryInfo),
      format = pulumi.Input.asOptionalInput<String>(format),
      reportName = pulumi.Input.asOptionalInput<String>(reportName),
      schedule = pulumi.Input.asOptionalInput<ReportSchedule>(schedule);

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
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      definition: pulumi.Output.create<ReportDefinition>(ReportDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      deliveryInfo: pulumi.Output.create<ReportDeliveryInfo>(ReportDeliveryInfo.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>())),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      reportName: map['reportName'] == null ? null : pulumi.Output.create<String>(map['reportName'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<ReportSchedule>(ReportSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
    );
  }
}

