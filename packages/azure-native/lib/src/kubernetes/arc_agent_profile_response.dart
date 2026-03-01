// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_error_response.dart';
import 'system_component_response.dart';

/// Defines the Arc Agent properties for the clusters.
class ArcAgentProfileResponse {
  /// Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  final String? agentAutoUpgrade;
  /// List of system extensions can be installed on the cluster resource.
  final List<AgentErrorResponse>? agentErrors;
  /// Version of the Arc agents to be installed on the cluster resource
  final String? desiredAgentVersion;
  /// List of system extensions can be installed on the cluster resource.
  final List<SystemComponentResponse>? systemComponents;

  /// Creates a new [ArcAgentProfileResponse].
  /// [agentAutoUpgrade] Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  /// [agentErrors] List of system extensions can be installed on the cluster resource.
  /// [desiredAgentVersion] Version of the Arc agents to be installed on the cluster resource
  /// [systemComponents] List of system extensions can be installed on the cluster resource.
  ArcAgentProfileResponse({
    this.agentAutoUpgrade,
    this.agentErrors,
    this.desiredAgentVersion,
    this.systemComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpgrade': ?agentAutoUpgrade,
      'agentErrors': ?agentErrors == null ? null : pulumi.Input.encodeList<AgentErrorResponse, Map<String, dynamic>>(agentErrors!, (value) => value.toMap()),
      'desiredAgentVersion': ?desiredAgentVersion,
      'systemComponents': ?systemComponents == null ? null : pulumi.Input.encodeList<SystemComponentResponse, Map<String, dynamic>>(systemComponents!, (value) => value.toMap()),
    };
  }

  factory ArcAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArcAgentProfileResponse(
      agentAutoUpgrade: map['agentAutoUpgrade'] == null ? null : map['agentAutoUpgrade'] as String,
      agentErrors: map['agentErrors'] == null ? null : pulumi.Input.decodeList<AgentErrorResponse>(map['agentErrors'], (value) => AgentErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      desiredAgentVersion: map['desiredAgentVersion'] == null ? null : map['desiredAgentVersion'] as String,
      systemComponents: map['systemComponents'] == null ? null : pulumi.Input.decodeList<SystemComponentResponse>(map['systemComponents'], (value) => SystemComponentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

