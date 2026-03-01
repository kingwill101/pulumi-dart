// ignore_for_file: unused_element, unnecessary_cast

import 'retry_response.dart';
import 'rollback_response.dart';

/// Configuration of the repair action.
class RepairModeResponse {
  /// Optional. Retries a failed job.
  final RetryResponse retry;

  /// Optional. Rolls back a `Rollout`.
  final RollbackResponse rollback;

  /// Creates a new [RepairModeResponse].
  /// [retry] Optional. Retries a failed job.
  /// [rollback] Optional. Rolls back a `Rollout`.
  RepairModeResponse({required this.retry, required this.rollback});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': retry.toMap(),
      'rollback': rollback.toMap(),
    };
  }

  factory RepairModeResponse.fromMap(Map<String, dynamic> map) {
    return RepairModeResponse(
      retry: RetryResponse.fromMap(
        (map['retry'] as Map).cast<String, dynamic>(),
      ),
      rollback: RollbackResponse.fromMap(
        (map['rollback'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
