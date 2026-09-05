// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_status_timeouts.dart';

/// Input properties used for looking up and filtering EnrollmentStatus resources.
class EnrollmentStatusState {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  final pulumi.Input<bool?>? includeMemberAccounts;
  /// The count of organization member accounts that are opted in to the service, if your account is an organization management account.
  final pulumi.Input<int?>? numberOfMemberAccountsOptedIn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String?>? status;
  final pulumi.Input<EnrollmentStatusTimeouts?>? timeouts;

  /// Creates a new [EnrollmentStatusState].
  /// [includeMemberAccounts] Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  /// [numberOfMemberAccountsOptedIn] The count of organization member accounts that are opted in to the service, if your account is an organization management account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The enrollment status of the account. Valid values: `Active`, `Inactive`.
  /// [timeouts] Optional.
  const EnrollmentStatusState({
    this.includeMemberAccounts,
    this.numberOfMemberAccountsOptedIn,
    this.region,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeMemberAccounts': ?includeMemberAccounts,
      'numberOfMemberAccountsOptedIn': ?numberOfMemberAccountsOptedIn,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EnrollmentStatusTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EnrollmentStatusState.fromMap(Map<String, dynamic> map) {
    return EnrollmentStatusState(
      includeMemberAccounts: (() { final guardedValue = map['includeMemberAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberOfMemberAccountsOptedIn: (() { final guardedValue = map['numberOfMemberAccountsOptedIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrollmentStatusTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
