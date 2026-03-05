// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_sync_config_lambda_conflict_handler_config.dart';

class ResolverSyncConfig {
  /// Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  final pulumi.Input<String>? conflictDetection;
  /// Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  final pulumi.Input<String>? conflictHandler;
  /// Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See Lambda Conflict Handler Config.
  final pulumi.Input<ResolverSyncConfigLambdaConflictHandlerConfig>? lambdaConflictHandlerConfig;

  /// Creates a new [ResolverSyncConfig].
  /// [conflictDetection] Conflict Detection strategy to use. Valid values are `NONE` and `VERSION`.
  /// [conflictHandler] Conflict Resolution strategy to perform in the event of a conflict. Valid values are `NONE`, `OPTIMISTIC_CONCURRENCY`, `AUTOMERGE`, and `LAMBDA`.
  /// [lambdaConflictHandlerConfig] Lambda Conflict Handler Config when configuring `LAMBDA` as the Conflict Handler. See Lambda Conflict Handler Config.
  ResolverSyncConfig({
    this.conflictDetection,
    this.conflictHandler,
    this.lambdaConflictHandlerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictDetection': ?conflictDetection,
      'conflictHandler': ?conflictHandler,
      'lambdaConflictHandlerConfig': ?pulumi.Input.mapOptionalInputValue<ResolverSyncConfigLambdaConflictHandlerConfig, Map<String, dynamic>>(lambdaConflictHandlerConfig, (value) => value.toMap()),
    };
  }

  factory ResolverSyncConfig.fromMap(Map<String, dynamic> map) {
    return ResolverSyncConfig(
      conflictDetection: (() { final guardedValue = map['conflictDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conflictHandler: (() { final guardedValue = map['conflictHandler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaConflictHandlerConfig: (() { final guardedValue = map['lambdaConflictHandlerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolverSyncConfigLambdaConflictHandlerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

