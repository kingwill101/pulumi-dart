// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../enrollment_status_timeouts/enrollment_status_timeouts.dart';

/// The set of arguments for EnrollmentStatus.
class EnrollmentStatusArgs {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? includeMemberAccounts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  final Input<String> status;
  final Input<EnrollmentStatusTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<EnrollmentStatusTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnrollmentStatusArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusArgs(
      includeMemberAccounts:
          Input.asOptionalInput<bool>(map['includeMemberAccounts']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asInput<String>(map['status']),
      timeouts:
          Input.asOptionalInput<EnrollmentStatusTimeouts>(map['timeouts']),
    );
  }
}
