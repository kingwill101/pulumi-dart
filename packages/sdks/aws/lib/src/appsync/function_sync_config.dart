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
  const FunctionSyncConfig({
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
      conflictDetection: (() { final guardedValue = map['conflictDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conflictHandler: (() { final guardedValue = map['conflictHandler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaConflictHandlerConfig: (() { final guardedValue = map['lambdaConflictHandlerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionSyncConfigLambdaConflictHandlerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

