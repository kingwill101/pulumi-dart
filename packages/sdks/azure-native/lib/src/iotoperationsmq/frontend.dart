// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'temporary_resource_limits_config.dart';

/// Desired properties of the Frontend Instances of the DMQTT Broker
class Frontend {
  /// Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  final pulumi.Input<int> replicas;
  /// Defines the limits for resources of the frontend instances of the MQTT broker.
  final pulumi.Input<TemporaryResourceLimitsConfig>? temporaryResourceLimits;
  /// Number of logical frontend workers per pod.
  final pulumi.Input<int>? workers;

  /// Creates a new [Frontend].
  /// [replicas] Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  /// [temporaryResourceLimits] Defines the limits for resources of the frontend instances of the MQTT broker.
  /// [workers] Number of logical frontend workers per pod.
  Frontend({
    required this.replicas,
    this.temporaryResourceLimits,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'temporaryResourceLimits': ?pulumi.Input.mapOptionalInputValue<TemporaryResourceLimitsConfig, Map<String, dynamic>>(temporaryResourceLimits, (value) => value.toMap()),
      'workers': ?workers,
    };
  }

  factory Frontend.fromMap(Map<String, dynamic> map) {
    return Frontend(
      replicas: pulumi.Input.fromValue(map['replicas'] as int),
      temporaryResourceLimits: (() { final guardedValue = map['temporaryResourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemporaryResourceLimitsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

