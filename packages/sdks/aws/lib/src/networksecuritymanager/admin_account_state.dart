// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_account_admin_scope.dart';
import 'admin_account_timeouts.dart';

/// Input properties used for looking up and filtering AdminAccount resources.
class AdminAccountState {
  /// AWS account ID to set as a Network Security Manager administrator account.
  final pulumi.Input<String?>? accountId;
  /// Scope of what the administrator account can manage. If omitted, AWS applies its default scope. See `adminScope` Block below.
  final pulumi.Input<AdminAccountAdminScope?>? adminScope;
  /// Priority of the administrator account, between `1` and `10`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the administrator account. Valid values: `ONBOARDED`, `OFFBOARDED`.
  final pulumi.Input<String?>? status;
  final pulumi.Input<AdminAccountTimeouts?>? timeouts;

  /// Creates a new [AdminAccountState].
  /// [accountId] AWS account ID to set as a Network Security Manager administrator account.
  /// [adminScope] Scope of what the administrator account can manage. If omitted, AWS applies its default scope. See `adminScope` Block below.
  /// [priority] Priority of the administrator account, between `1` and `10`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the administrator account. Valid values: `ONBOARDED`, `OFFBOARDED`.
  /// [timeouts] Optional.
  const AdminAccountState({
    this.accountId,
    this.adminScope,
    this.priority,
    this.region,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'adminScope': ?pulumi.Input.mapOptionalInputValue<AdminAccountAdminScope, Map<String, dynamic>>(adminScope, (value) => value.toMap()),
      'priority': ?priority,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AdminAccountTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AdminAccountState.fromMap(Map<String, dynamic> map) {
    return AdminAccountState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminScope: (() { final guardedValue = map['adminScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountAdminScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
