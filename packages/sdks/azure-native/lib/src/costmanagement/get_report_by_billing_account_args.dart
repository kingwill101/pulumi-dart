// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_report_by_billing_account_args_doc}
/// Arguments for getReportByBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_report_by_billing_account_args_doc}
class GetReportByBillingAccountArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// Report Name.
  final pulumi.Input<String> reportName;

  /// Creates a new [GetReportByBillingAccountArgs].
  /// [billingAccountId] BillingAccount ID
  /// [reportName] Report Name.
  GetReportByBillingAccountArgs({
    required this.billingAccountId,
    required this.reportName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'reportName': reportName,
    };
  }

  factory GetReportByBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetReportByBillingAccountArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      reportName: pulumi.Input.fromValue(map['reportName'] as String),
    );
  }
}

