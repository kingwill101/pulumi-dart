// ignore_for_file: unused_element, unnecessary_cast

import 'temporary_resource_limits_config_response.dart';

/// Desired properties of the Frontend Instances of the DMQTT Broker
class FrontendResponse {
  /// Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  final int replicas;
  /// Defines the limits for resources of the frontend instances of the MQTT broker.
  final TemporaryResourceLimitsConfigResponse? temporaryResourceLimits;
  /// Number of logical frontend workers per pod.
  final int? workers;

  /// Creates a new [FrontendResponse].
  /// [replicas] Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  /// [temporaryResourceLimits] Defines the limits for resources of the frontend instances of the MQTT broker.
  /// [workers] Number of logical frontend workers per pod.
  FrontendResponse({
    required this.replicas,
    this.temporaryResourceLimits,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'temporaryResourceLimits': ?temporaryResourceLimits == null ? null : temporaryResourceLimits!.toMap(),
      'workers': ?workers,
    };
  }

  factory FrontendResponse.fromMap(Map<String, dynamic> map) {
    return FrontendResponse(
      replicas: map['replicas'] as int,
      temporaryResourceLimits: map['temporaryResourceLimits'] == null ? null : TemporaryResourceLimitsConfigResponse.fromMap((map['temporaryResourceLimits'] as Map).cast<String, dynamic>()),
      workers: map['workers'] == null ? null : map['workers'] as int,
    );
  }
}

