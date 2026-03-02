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
      conflictDetection: map['conflictDetection'] == null ? null : ((map['conflictDetection'] as String).input()).input(),
      conflictHandler: map['conflictHandler'] == null ? null : ((map['conflictHandler'] as String).input()).input(),
      lambdaConflictHandlerConfig: map['lambdaConflictHandlerConfig'] == null ? null : ((ResolverSyncConfigLambdaConflictHandlerConfig.fromMap((map['lambdaConflictHandlerConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

