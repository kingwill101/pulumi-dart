// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_status_timeouts.dart';

/// {@template pulumi_computeoptimizer_enrollment_status_enrollment_status_args_doc}
/// The set of arguments for EnrollmentStatus.
/// {@endtemplate}
/// {@macro pulumi_computeoptimizer_enrollment_status_enrollment_status_args_doc}
class EnrollmentStatusArgs {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  final pulumi.Input<bool>? includeMemberAccounts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String> status;
  final pulumi.Input<EnrollmentStatusTimeouts>? timeouts;

  /// Creates a new [EnrollmentStatusArgs].
  /// [includeMemberAccounts] Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The enrollment status of the account. Valid values: `Active`, `Inactive`.
  /// [timeouts] Optional.
  EnrollmentStatusArgs({
    this.includeMemberAccounts,
    this.region,
    required this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeMemberAccounts': ?includeMemberAccounts,
      'region': ?region,
      'status': status,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            EnrollmentStatusTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory EnrollmentStatusArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusArgs(
      includeMemberAccounts: (() {
        final guardedValue = map['includeMemberAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnrollmentStatusTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
