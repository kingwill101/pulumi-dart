// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnrollmentStatus.
class EnrollmentStatusCostoptimizationhubArgs {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  final pulumi.Input<bool>? includeMemberAccounts;

  EnrollmentStatusCostoptimizationhubArgs({
    this.includeMemberAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeMemberAccountsValue = includeMemberAccounts;
    if (includeMemberAccountsValue != null) {
      map['includeMemberAccounts'] = includeMemberAccountsValue;
    }
    return map;
  }

  factory EnrollmentStatusCostoptimizationhubArgs.fromMap(
      Map<String, dynamic> map) {
    return EnrollmentStatusCostoptimizationhubArgs(
      includeMemberAccounts:
          pulumi.Input.asOptionalInput<bool>(map['includeMemberAccounts']),
    );
  }
}
