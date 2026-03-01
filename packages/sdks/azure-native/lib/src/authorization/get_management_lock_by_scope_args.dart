// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_management_lock_by_scope_args_doc}
/// Arguments for getManagementLockByScope.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_management_lock_by_scope_args_doc}
class GetManagementLockByScopeArgs {
  /// The name of lock.
  final pulumi.Input<String> lockName;
  /// The scope for the lock.
  final pulumi.Input<String> scope;

  /// Creates a new [GetManagementLockByScopeArgs].
  /// [lockName] The name of lock.
  /// [scope] The scope for the lock.
  GetManagementLockByScopeArgs({
    required pulumi.Output<String> lockName,
    required pulumi.Output<String> scope,
  }) :
      lockName = pulumi.Input.asInput<String>(lockName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockName': lockName,
      'scope': scope,
    };
  }

  factory GetManagementLockByScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementLockByScopeArgs(
      lockName: pulumi.Output.create<String>(map['lockName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

