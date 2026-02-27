// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../enrollment_status_timeouts/enrollment_status_timeouts.dart';

/// The set of arguments for EnrollmentStatus.
class EnrollmentStatusArgs {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  final pulumi.Input<bool>? includeMemberAccounts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String> status;
  final pulumi.Input<EnrollmentStatusTimeouts>? timeouts;

  EnrollmentStatusArgs({
    this.includeMemberAccounts,
    this.region,
    required this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeMemberAccountsValue = includeMemberAccounts;
    if (includeMemberAccountsValue != null) {
      map['includeMemberAccounts'] = includeMemberAccountsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['status'] = status;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          EnrollmentStatusTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnrollmentStatusArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusArgs(
      includeMemberAccounts:
          pulumi.Input.asOptionalInput<bool>(map['includeMemberAccounts']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asInput<String>(map['status']),
      timeouts: pulumi.Input.asOptionalInput<EnrollmentStatusTimeouts>(
          map['timeouts']),
    );
  }
}
