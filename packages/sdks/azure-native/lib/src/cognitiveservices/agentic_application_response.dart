// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_reference_response.dart';
import 'application_traffic_routing_policy_response.dart';
import 'assigned_identity_response.dart';
import 'channels_built_in_authorization_policy_response.dart';

/// Resource type representing an agentic application as a management construct.
class AgenticApplicationResponse {
  /// The EntraId Agentic Blueprint of the application.
  final pulumi.Input<AssignedIdentityResponse>? agentIdentityBlueprint;
  /// The list of agent definitions comprising this application, returned as references to the objects under the parent project; use this to obtain a flat list of all agent-version pairs represented by this application.
  final pulumi.Input<List<AgentReferenceResponse>>? agents;
  /// Gets or sets the authorization policy associated with this agentic application instance.
  final pulumi.Input<ChannelsBuiltInAuthorizationPolicyResponse>? authorizationPolicy;
  /// The application's dedicated invocation endpoint.
  final pulumi.Input<String>? baseUrl;
  /// The (default) agent instance identity of the application.
  final pulumi.Input<AssignedIdentityResponse>? defaultInstanceIdentity;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// The display name of the application.
  final pulumi.Input<String>? displayName;
  /// Enabledstate of the application.
  final pulumi.Input<bool> isEnabled;
  /// Provisioning state of the application.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the traffic routing policy for the application's deployments.
  final pulumi.Input<ApplicationTrafficRoutingPolicyResponse>? trafficRoutingPolicy;

  /// Creates a new [AgenticApplicationResponse].
  /// [agentIdentityBlueprint] The EntraId Agentic Blueprint of the application.
  /// [agents] The list of agent definitions comprising this application, returned as references to the objects under the parent project; use this to obtain a flat list of all agent-version pairs represented by this application.
  /// [authorizationPolicy] Gets or sets the authorization policy associated with this agentic application instance.
  /// [baseUrl] The application's dedicated invocation endpoint.
  /// [defaultInstanceIdentity] The (default) agent instance identity of the application.
  /// [description] The asset description text.
  /// [displayName] The display name of the application.
  /// [isEnabled] Enabledstate of the application.
  /// [provisioningState] Provisioning state of the application.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trafficRoutingPolicy] Gets or sets the traffic routing policy for the application's deployments.
  const AgenticApplicationResponse({
    this.agentIdentityBlueprint,
    this.agents,
    this.authorizationPolicy,
    this.baseUrl,
    this.defaultInstanceIdentity,
    this.description,
    this.displayName,
    required this.isEnabled,
    required this.provisioningState,
    this.tags,
    this.trafficRoutingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentIdentityBlueprint': ?pulumi.Input.mapOptionalInputValue<AssignedIdentityResponse, Map<String, dynamic>>(agentIdentityBlueprint, (value) => value.toMap()),
      'agents': ?pulumi.Input.mapOptionalInputValue<List<AgentReferenceResponse>, List<Map<String, dynamic>>>(agents, (value) => pulumi.Input.encodeList<AgentReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizationPolicy': ?pulumi.Input.mapOptionalInputValue<ChannelsBuiltInAuthorizationPolicyResponse, Map<String, dynamic>>(authorizationPolicy, (value) => value.toMap()),
      'baseUrl': ?baseUrl,
      'defaultInstanceIdentity': ?pulumi.Input.mapOptionalInputValue<AssignedIdentityResponse, Map<String, dynamic>>(defaultInstanceIdentity, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': isEnabled,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'trafficRoutingPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationTrafficRoutingPolicyResponse, Map<String, dynamic>>(trafficRoutingPolicy, (value) => value.toMap()),
    };
  }

  factory AgenticApplicationResponse.fromMap(Map<String, dynamic> map) {
    return AgenticApplicationResponse(
      agentIdentityBlueprint: (() { final guardedValue = map['agentIdentityBlueprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentReferenceResponse>(guardedValue, (value) => AgentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authorizationPolicy: (() { final guardedValue = map['authorizationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelsBuiltInAuthorizationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultInstanceIdentity: (() { final guardedValue = map['defaultInstanceIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficRoutingPolicy: (() { final guardedValue = map['trafficRoutingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationTrafficRoutingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

