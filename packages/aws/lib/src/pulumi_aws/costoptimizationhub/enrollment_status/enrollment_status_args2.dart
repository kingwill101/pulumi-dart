// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnrollmentStatus.
class EnrollmentStatusArgs2 {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  final Input<bool>? includeMemberAccounts;

  EnrollmentStatusArgs2({
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

  factory EnrollmentStatusArgs2.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusArgs2(
      includeMemberAccounts:
          Input.asOptionalInput<bool>(map['includeMemberAccounts']),
    );
  }
}
