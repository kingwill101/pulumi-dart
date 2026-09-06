// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_error_response.dart';
import 'system_component_response.dart';

/// Defines the Arc Agent properties for the clusters.
class ArcAgentProfileResponse {
  /// Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  final pulumi.Input<String?>? agentAutoUpgrade;
  /// List of system extensions can be installed on the cluster resource.
  final pulumi.Input<List<AgentErrorResponse>?>? agentErrors;
  /// Version of the Arc agents to be installed on the cluster resource
  final pulumi.Input<String?>? desiredAgentVersion;
  /// List of system extensions can be installed on the cluster resource.
  final pulumi.Input<List<SystemComponentResponse>?>? systemComponents;

  /// Creates a new [ArcAgentProfileResponse].
  /// [agentAutoUpgrade] Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  /// [agentErrors] List of system extensions can be installed on the cluster resource.
  /// [desiredAgentVersion] Version of the Arc agents to be installed on the cluster resource
  /// [systemComponents] List of system extensions can be installed on the cluster resource.
  ArcAgentProfileResponse({
    pulumi.Input<String?>? agentAutoUpgrade,
    this.agentErrors,
    this.desiredAgentVersion,
    this.systemComponents,
  }) : agentAutoUpgrade = agentAutoUpgrade ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpgrade': ?agentAutoUpgrade,
      'agentErrors': ?pulumi.Input.mapOptionalInputValue<List<AgentErrorResponse>, List<Map<String, dynamic>>>(agentErrors, (value) => pulumi.Input.encodeList<AgentErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredAgentVersion': ?desiredAgentVersion,
      'systemComponents': ?pulumi.Input.mapOptionalInputValue<List<SystemComponentResponse>, List<Map<String, dynamic>>>(systemComponents, (value) => pulumi.Input.encodeList<SystemComponentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArcAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArcAgentProfileResponse(
      agentAutoUpgrade: (() { final guardedValue = map['agentAutoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentErrors: (() { final guardedValue = map['agentErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentErrorResponse>(guardedValue, (value) => AgentErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredAgentVersion: (() { final guardedValue = map['desiredAgentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemComponents: (() { final guardedValue = map['systemComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemComponentResponse>(guardedValue, (value) => SystemComponentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
