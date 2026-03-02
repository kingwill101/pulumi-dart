// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_sync_config_lambda_conflict_handler_config.dart';

class FunctionSyncConfig {
  /// Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  final pulumi.Input<String>? conflictDetection;
  /// Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  final pulumi.Input<String>? conflictHandler;
  /// Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See `lambda_conflict_handler_config` Block for details.
  final pulumi.Input<FunctionSyncConfigLambdaConflictHandlerConfig>? lambdaConflictHandlerConfig;

  /// Creates a new [FunctionSyncConfig].
  /// [conflictDetection] Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  /// [conflictHandler] Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  /// [lambdaConflictHandlerConfig] Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See `lambda_conflict_handler_config` Block for details.
  FunctionSyncConfig({
    this.conflictDetection,
    this.conflictHandler,
    this.lambdaConflictHandlerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictDetection': ?conflictDetection,
      'conflictHandler': ?conflictHandler,
      'lambdaConflictHandlerConfig': ?pulumi.Input.mapOptionalInputValue<FunctionSyncConfigLambdaConflictHandlerConfig, Map<String, dynamic>>(lambdaConflictHandlerConfig, (value) => value.toMap()),
    };
  }

  factory FunctionSyncConfig.fromMap(Map<String, dynamic> map) {
    return FunctionSyncConfig(
      conflictDetection: map['conflictDetection'] == null ? null : ((map['conflictDetection'] as String).input()).input(),
      conflictHandler: map['conflictHandler'] == null ? null : ((map['conflictHandler'] as String).input()).input(),
      lambdaConflictHandlerConfig: map['lambdaConflictHandlerConfig'] == null ? null : ((FunctionSyncConfigLambdaConflictHandlerConfig.fromMap((map['lambdaConflictHandlerConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

