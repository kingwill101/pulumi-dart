// ignore_for_file: unused_element, unnecessary_cast

import '../resolver_sync_config_lambda_conflict_handler_config/resolver_sync_config_lambda_conflict_handler_config.dart';

class ResolverSyncConfig {
  /// Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  final String? conflictDetection;

  /// Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  final String? conflictHandler;

  /// Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See Lambda Conflict Handler Config.
  final ResolverSyncConfigLambdaConflictHandlerConfig?
      lambdaConflictHandlerConfig;

  ResolverSyncConfig({
    this.conflictDetection,
    this.conflictHandler,
    this.lambdaConflictHandlerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conflictDetectionValue = conflictDetection;
    if (conflictDetectionValue != null) {
      map['conflictDetection'] = conflictDetectionValue;
    }
    final conflictHandlerValue = conflictHandler;
    if (conflictHandlerValue != null) {
      map['conflictHandler'] = conflictHandlerValue;
    }
    final lambdaConflictHandlerConfigValue = lambdaConflictHandlerConfig;
    if (lambdaConflictHandlerConfigValue != null) {
      map['lambdaConflictHandlerConfig'] =
          lambdaConflictHandlerConfigValue.toMap();
    }
    return map;
  }

  factory ResolverSyncConfig.fromMap(Map<String, dynamic> map) {
    return ResolverSyncConfig(
      conflictDetection: map['conflictDetection'] == null
          ? null
          : map['conflictDetection'] as String,
      conflictHandler: map['conflictHandler'] == null
          ? null
          : map['conflictHandler'] as String,
      lambdaConflictHandlerConfig: map['lambdaConflictHandlerConfig'] == null
          ? null
          : ResolverSyncConfigLambdaConflictHandlerConfig.fromMap(
              (map['lambdaConflictHandlerConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
