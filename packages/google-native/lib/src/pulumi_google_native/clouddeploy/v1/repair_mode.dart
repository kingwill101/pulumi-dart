// ignore_for_file: unused_element, unnecessary_cast

import 'retry.dart';
import 'rollback.dart';

/// Configuration of the repair action.
class RepairMode {
  /// Optional. Retries a failed job.
  final Retry? retry;

  /// Optional. Rolls back a `Rollout`.
  final Rollback? rollback;

  RepairMode({
    this.retry,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retryValue = retry;
    if (retryValue != null) {
      map['retry'] = retryValue.toMap();
    }
    final rollbackValue = rollback;
    if (rollbackValue != null) {
      map['rollback'] = rollbackValue.toMap();
    }
    return map;
  }

  factory RepairMode.fromMap(Map<String, dynamic> map) {
    return RepairMode(
      retry: map['retry'] == null
          ? null
          : Retry.fromMap((map['retry'] as Map).cast<String, dynamic>()),
      rollback: map['rollback'] == null
          ? null
          : Rollback.fromMap((map['rollback'] as Map).cast<String, dynamic>()),
    );
  }
}
