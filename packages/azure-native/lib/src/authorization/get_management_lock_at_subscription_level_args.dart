// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_management_lock_at_subscription_level_args_doc}
/// Arguments for getManagementLockAtSubscriptionLevel.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_management_lock_at_subscription_level_args_doc}
class GetManagementLockAtSubscriptionLevelArgs {
  /// The name of the lock to get.
  final pulumi.Input<String> lockName;

  /// Creates a new [GetManagementLockAtSubscriptionLevelArgs].
  /// [lockName] The name of the lock to get.
  GetManagementLockAtSubscriptionLevelArgs({
    required String lockName,
  }) :
      lockName = pulumi.Input.asInput<String>(lockName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockName': lockName,
    };
  }

  factory GetManagementLockAtSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementLockAtSubscriptionLevelArgs(
      lockName: map['lockName'] as String,
    );
  }
}

