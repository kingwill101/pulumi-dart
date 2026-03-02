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
      replicas: (map['replicas'] as int).input(),
      temporaryResourceLimits: map['temporaryResourceLimits'] == null ? null : (TemporaryResourceLimitsConfig.fromMap((map['temporaryResourceLimits'] as Map).cast<String, dynamic>())).input(),
      workers: map['workers'] == null ? null : (map['workers'] as int).input(),
    );
  }
}

