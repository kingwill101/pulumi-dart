// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_read_pool_auto_scale_config_target_metric.dart';

class DatabaseInstanceSettingsReadPoolAutoScaleConfig {
  /// True if auto scale in is disabled.
  final bool? disableScaleIn;
  /// True if Read Pool Auto Scale is enabled.
  final bool? enabled;
  /// Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  final int? maxNodeCount;
  /// Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  final int? minNodeCount;
  /// The cooldown period for scale in operations.
  final int? scaleInCooldownSeconds;
  /// The cooldown period for scale out operations.
  final int? scaleOutCooldownSeconds;
  /// Target metrics for Read Pool Auto Scale. Must specify `target_metrics.metric` and `target_metrics.target_value` in subblock.
  final List<DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric>? targetMetrics;

  /// Creates a new [DatabaseInstanceSettingsReadPoolAutoScaleConfig].
  /// [disableScaleIn] True if auto scale in is disabled.
  /// [enabled] True if Read Pool Auto Scale is enabled.
  /// [maxNodeCount] Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  /// [minNodeCount] Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  /// [scaleInCooldownSeconds] The cooldown period for scale in operations.
  /// [scaleOutCooldownSeconds] The cooldown period for scale out operations.
  /// [targetMetrics] Target metrics for Read Pool Auto Scale. Must specify `target_metrics.metric` and `target_metrics.target_value` in subblock.
  DatabaseInstanceSettingsReadPoolAutoScaleConfig({
    this.disableScaleIn,
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
    this.scaleInCooldownSeconds,
    this.scaleOutCooldownSeconds,
    this.targetMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableScaleIn': ?disableScaleIn,
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'scaleInCooldownSeconds': ?scaleInCooldownSeconds,
      'scaleOutCooldownSeconds': ?scaleOutCooldownSeconds,
      'targetMetrics': ?targetMetrics == null ? null : pulumi.Input.encodeList<DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric, Map<String, dynamic>>(targetMetrics!, (value) => value.toMap()),
    };
  }

  factory DatabaseInstanceSettingsReadPoolAutoScaleConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsReadPoolAutoScaleConfig(
      disableScaleIn: map['disableScaleIn'] == null ? null : map['disableScaleIn'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxNodeCount: map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
      scaleInCooldownSeconds: map['scaleInCooldownSeconds'] == null ? null : map['scaleInCooldownSeconds'] as int,
      scaleOutCooldownSeconds: map['scaleOutCooldownSeconds'] == null ? null : map['scaleOutCooldownSeconds'] as int,
      targetMetrics: map['targetMetrics'] == null ? null : pulumi.Input.decodeList<DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric>(map['targetMetrics'], (value) => DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

