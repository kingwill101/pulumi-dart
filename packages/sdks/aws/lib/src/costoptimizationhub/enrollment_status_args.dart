// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costoptimizationhub_enrollment_status_enrollment_status_args_doc}
/// The set of arguments for EnrollmentStatus.
/// {@endtemplate}
/// {@macro pulumi_costoptimizationhub_enrollment_status_enrollment_status_args_doc}
class EnrollmentStatusArgs {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  final pulumi.Input<bool?>? includeMemberAccounts;

  /// Creates a new [EnrollmentStatusArgs].
  /// [includeMemberAccounts] Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  const EnrollmentStatusArgs({
    this.includeMemberAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeMemberAccounts': ?includeMemberAccounts,
    };
  }

  factory EnrollmentStatusArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusArgs(
      includeMemberAccounts: (() { final guardedValue = map['includeMemberAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
