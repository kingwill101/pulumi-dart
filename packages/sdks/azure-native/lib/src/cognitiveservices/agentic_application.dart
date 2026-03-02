// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_reference.dart';
import 'application_traffic_routing_policy.dart';
import 'assigned_identity.dart';
import 'channels_built_in_authorization_policy.dart';

/// Resource type representing an agentic application as a management construct.
class AgenticApplication {
  /// The EntraId Agentic Blueprint of the application.
  final pulumi.Input<AssignedIdentity>? agentIdentityBlueprint;
  /// The list of agent definitions comprising this application, returned as references to the objects under the parent project; use this to obtain a flat list of all agent-version pairs represented by this application.
  final pulumi.Input<List<AgentReference>>? agents;
  /// Gets or sets the authorization policy associated with this agentic application instance.
  final pulumi.Input<ChannelsBuiltInAuthorizationPolicy>? authorizationPolicy;
  /// The application's dedicated invocation endpoint.
  final pulumi.Input<String>? baseUrl;
  /// The (default) agent instance identity of the application.
  final pulumi.Input<AssignedIdentity>? defaultInstanceIdentity;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// The display name of the application.
  final pulumi.Input<String>? displayName;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the traffic routing policy for the application's deployments.
  final pulumi.Input<ApplicationTrafficRoutingPolicy>? trafficRoutingPolicy;

  /// Creates a new [AgenticApplication].
  /// [agentIdentityBlueprint] The EntraId Agentic Blueprint of the application.
  /// [agents] The list of agent definitions comprising this application, returned as references to the objects under the parent project; use this to obtain a flat list of all agent-version pairs represented by this application.
  /// [authorizationPolicy] Gets or sets the authorization policy associated with this agentic application instance.
  /// [baseUrl] The application's dedicated invocation endpoint.
  /// [defaultInstanceIdentity] The (default) agent instance identity of the application.
  /// [description] The asset description text.
  /// [displayName] The display name of the application.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trafficRoutingPolicy] Gets or sets the traffic routing policy for the application's deployments.
  AgenticApplication({
    this.agentIdentityBlueprint,
    this.agents,
    this.authorizationPolicy,
    this.baseUrl,
    this.defaultInstanceIdentity,
    this.description,
    this.displayName,
    this.tags,
    this.trafficRoutingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentIdentityBlueprint': ?pulumi.Input.mapOptionalInputValue<AssignedIdentity, Map<String, dynamic>>(agentIdentityBlueprint, (value) => value.toMap()),
      'agents': ?pulumi.Input.mapOptionalInputValue<List<AgentReference>, List<Map<String, dynamic>>>(agents, (value) => pulumi.Input.encodeList<AgentReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizationPolicy': ?pulumi.Input.mapOptionalInputValue<ChannelsBuiltInAuthorizationPolicy, Map<String, dynamic>>(authorizationPolicy, (value) => value.toMap()),
      'baseUrl': ?baseUrl,
      'defaultInstanceIdentity': ?pulumi.Input.mapOptionalInputValue<AssignedIdentity, Map<String, dynamic>>(defaultInstanceIdentity, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'tags': ?tags,
      'trafficRoutingPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationTrafficRoutingPolicy, Map<String, dynamic>>(trafficRoutingPolicy, (value) => value.toMap()),
    };
  }

  factory AgenticApplication.fromMap(Map<String, dynamic> map) {
    return AgenticApplication(
      agentIdentityBlueprint: map['agentIdentityBlueprint'] == null ? null : (AssignedIdentity.fromMap((map['agentIdentityBlueprint'] as Map).cast<String, dynamic>())).input(),
      agents: map['agents'] == null ? null : (pulumi.Input.decodeList<AgentReference>(map['agents'], (value) => AgentReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authorizationPolicy: map['authorizationPolicy'] == null ? null : (ChannelsBuiltInAuthorizationPolicy.fromMap((map['authorizationPolicy'] as Map).cast<String, dynamic>())).input(),
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl'] as String).input(),
      defaultInstanceIdentity: map['defaultInstanceIdentity'] == null ? null : (AssignedIdentity.fromMap((map['defaultInstanceIdentity'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficRoutingPolicy: map['trafficRoutingPolicy'] == null ? null : (ApplicationTrafficRoutingPolicy.fromMap((map['trafficRoutingPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

