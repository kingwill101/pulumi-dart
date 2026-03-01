// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_replica_response.dart';

/// Availability group configuration.
class AgConfigurationResponse {
  /// Replica configurations.
  final List<AgReplicaResponse>? replicas;

  /// Creates a new [AgConfigurationResponse].
  /// [replicas] Replica configurations.
  AgConfigurationResponse({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas == null ? null : pulumi.Input.encodeList<AgReplicaResponse, Map<String, dynamic>>(replicas!, (value) => value.toMap()),
    };
  }

  factory AgConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AgConfigurationResponse(
      replicas: map['replicas'] == null ? null : pulumi.Input.decodeList<AgReplicaResponse>(map['replicas'], (value) => AgReplicaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

