// ignore_for_file: unused_element, unnecessary_cast

import '../function_sync_config_lambda_conflict_handler_config/function_sync_config_lambda_conflict_handler_config.dart';

class FunctionSyncConfig {
  /// Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  final String? conflictDetection;

  /// Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  final String? conflictHandler;

  /// Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See <span pulumi-lang-nodejs="`lambdaConflictHandlerConfig`" pulumi-lang-dotnet="`LambdaConflictHandlerConfig`" pulumi-lang-go="`lambdaConflictHandlerConfig`" pulumi-lang-python="`lambda_conflict_handler_config`" pulumi-lang-yaml="`lambdaConflictHandlerConfig`" pulumi-lang-java="`lambdaConflictHandlerConfig`">`lambda_conflict_handler_config`</span> Block for details.
  final FunctionSyncConfigLambdaConflictHandlerConfig?
      lambdaConflictHandlerConfig;

  FunctionSyncConfig({
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

  factory FunctionSyncConfig.fromMap(Map<String, dynamic> map) {
    return FunctionSyncConfig(
      conflictDetection: map['conflictDetection'] == null
          ? null
          : map['conflictDetection'] as String,
      conflictHandler: map['conflictHandler'] == null
          ? null
          : map['conflictHandler'] as String,
      lambdaConflictHandlerConfig: map['lambdaConflictHandlerConfig'] == null
          ? null
          : FunctionSyncConfigLambdaConflictHandlerConfig.fromMap(
              (map['lambdaConflictHandlerConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
