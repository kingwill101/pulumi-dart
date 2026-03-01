// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotection_container_mapping_details_response.dart';
import 'health_error_response.dart';

/// Protection container mapping properties.
class ProtectionContainerMappingPropertiesResponse {
  /// Health of pairing.
  final String? health;
  /// Health error.
  final List<HealthErrorResponse>? healthErrorDetails;
  /// Friendly name of replication policy.
  final String? policyFriendlyName;
  /// Policy ARM Id.
  final String? policyId;
  /// Provider specific provider details.
  final A2AProtectionContainerMappingDetailsResponse? providerSpecificDetails;
  /// Friendly name of source fabric.
  final String? sourceFabricFriendlyName;
  /// Friendly name of source protection container.
  final String? sourceProtectionContainerFriendlyName;
  /// Association Status.
  final String? state;
  /// Friendly name of target fabric.
  final String? targetFabricFriendlyName;
  /// Friendly name of paired container.
  final String? targetProtectionContainerFriendlyName;
  /// Paired protection container ARM ID.
  final String? targetProtectionContainerId;

  /// Creates a new [ProtectionContainerMappingPropertiesResponse].
  /// [health] Health of pairing.
  /// [healthErrorDetails] Health error.
  /// [policyFriendlyName] Friendly name of replication policy.
  /// [policyId] Policy ARM Id.
  /// [providerSpecificDetails] Provider specific provider details.
  /// [sourceFabricFriendlyName] Friendly name of source fabric.
  /// [sourceProtectionContainerFriendlyName] Friendly name of source protection container.
  /// [state] Association Status.
  /// [targetFabricFriendlyName] Friendly name of target fabric.
  /// [targetProtectionContainerFriendlyName] Friendly name of paired container.
  /// [targetProtectionContainerId] Paired protection container ARM ID.
  ProtectionContainerMappingPropertiesResponse({
    this.health,
    this.healthErrorDetails,
    this.policyFriendlyName,
    this.policyId,
    this.providerSpecificDetails,
    this.sourceFabricFriendlyName,
    this.sourceProtectionContainerFriendlyName,
    this.state,
    this.targetFabricFriendlyName,
    this.targetProtectionContainerFriendlyName,
    this.targetProtectionContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': ?health,
      'healthErrorDetails': ?healthErrorDetails == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrorDetails!, (value) => value.toMap()),
      'policyFriendlyName': ?policyFriendlyName,
      'policyId': ?policyId,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : providerSpecificDetails!.toMap(),
      'sourceFabricFriendlyName': ?sourceFabricFriendlyName,
      'sourceProtectionContainerFriendlyName': ?sourceProtectionContainerFriendlyName,
      'state': ?state,
      'targetFabricFriendlyName': ?targetFabricFriendlyName,
      'targetProtectionContainerFriendlyName': ?targetProtectionContainerFriendlyName,
      'targetProtectionContainerId': ?targetProtectionContainerId,
    };
  }

  factory ProtectionContainerMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingPropertiesResponse(
      health: map['health'] == null ? null : map['health'] as String,
      healthErrorDetails: map['healthErrorDetails'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrorDetails'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyFriendlyName: map['policyFriendlyName'] == null ? null : map['policyFriendlyName'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : A2AProtectionContainerMappingDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
      sourceFabricFriendlyName: map['sourceFabricFriendlyName'] == null ? null : map['sourceFabricFriendlyName'] as String,
      sourceProtectionContainerFriendlyName: map['sourceProtectionContainerFriendlyName'] == null ? null : map['sourceProtectionContainerFriendlyName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      targetFabricFriendlyName: map['targetFabricFriendlyName'] == null ? null : map['targetFabricFriendlyName'] as String,
      targetProtectionContainerFriendlyName: map['targetProtectionContainerFriendlyName'] == null ? null : map['targetProtectionContainerFriendlyName'] as String,
      targetProtectionContainerId: map['targetProtectionContainerId'] == null ? null : map['targetProtectionContainerId'] as String,
    );
  }
}

