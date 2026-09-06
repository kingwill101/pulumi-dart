// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'temporary_resource_limits_config_response.dart';

/// Desired properties of the Frontend Instances of the DMQTT Broker
class FrontendResponse {
  /// Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  final pulumi.Input<int> replicas;
  /// Defines the limits for resources of the frontend instances of the MQTT broker.
  final pulumi.Input<TemporaryResourceLimitsConfigResponse?>? temporaryResourceLimits;
  /// Number of logical frontend workers per pod.
  final pulumi.Input<int?>? workers;

  /// Creates a new [FrontendResponse].
  /// [replicas] Replicas is desired number of frontend replicas of the given distributed MQTT broker.
  /// [temporaryResourceLimits] Defines the limits for resources of the frontend instances of the MQTT broker.
  /// [workers] Number of logical frontend workers per pod.
  FrontendResponse({
    required this.replicas,
    this.temporaryResourceLimits,
    pulumi.Input<int?>? workers,
  }) : workers = workers ?? pulumi.Input.fromValue(2);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'temporaryResourceLimits': ?pulumi.Input.mapOptionalInputValue<TemporaryResourceLimitsConfigResponse, Map<String, dynamic>>(temporaryResourceLimits, (value) => value.toMap()),
      'workers': ?workers,
    };
  }

  factory FrontendResponse.fromMap(Map<String, dynamic> map) {
    return FrontendResponse(
      replicas: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['replicas'])),
      temporaryResourceLimits: (() { final guardedValue = map['temporaryResourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemporaryResourceLimitsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
