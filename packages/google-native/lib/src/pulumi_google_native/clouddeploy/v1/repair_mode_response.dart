// ignore_for_file: unused_element, unnecessary_cast

import 'retry_response.dart';
import 'rollback_response.dart';

/// Configuration of the repair action.
class RepairModeResponse {
  /// Optional. Retries a failed job.
  final RetryResponse retry;

  /// Optional. Rolls back a `Rollout`.
  final RollbackResponse rollback;

  RepairModeResponse({
    required this.retry,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retry'] = retry.toMap();
    map['rollback'] = rollback.toMap();
    return map;
  }

  factory RepairModeResponse.fromMap(Map<String, dynamic> map) {
    return RepairModeResponse(
      retry:
          RetryResponse.fromMap((map['retry'] as Map).cast<String, dynamic>()),
      rollback: RollbackResponse.fromMap(
          (map['rollback'] as Map).cast<String, dynamic>()),
    );
  }
}
