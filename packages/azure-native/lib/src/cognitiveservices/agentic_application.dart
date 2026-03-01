// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_reference.dart';
import 'application_traffic_routing_policy.dart';
import 'assigned_identity.dart';
import 'channels_built_in_authorization_policy.dart';

/// Resource type representing an agentic application as a management construct.
class AgenticApplication {
  /// The EntraId Agentic Blueprint of the application.
  final AssignedIdentity? agentIdentityBlueprint;
  /// The list of agent definitions comprising this application, returned as references to the objects under the parent project; use this to obtain a flat list of all agent-version pairs represented by this application.
  final List<AgentReference>? agents;
  /// Gets or sets the authorization policy associated with this agentic application instance.
  final ChannelsBuiltInAuthorizationPolicy? authorizationPolicy;
  /// The application's dedicated invocation endpoint.
  final String? baseUrl;
  /// The (default) agent instance identity of the application.
  final AssignedIdentity? defaultInstanceIdentity;
  /// The asset description text.
  final String? description;
  /// The display name of the application.
  final String? displayName;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;
  /// Gets or sets the traffic routing policy for the application's deployments.
  final ApplicationTrafficRoutingPolicy? trafficRoutingPolicy;

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
      'agentIdentityBlueprint': ?agentIdentityBlueprint == null ? null : agentIdentityBlueprint!.toMap(),
      'agents': ?agents == null ? null : pulumi.Input.encodeList<AgentReference, Map<String, dynamic>>(agents!, (value) => value.toMap()),
      'authorizationPolicy': ?authorizationPolicy == null ? null : authorizationPolicy!.toMap(),
      'baseUrl': ?baseUrl,
      'defaultInstanceIdentity': ?defaultInstanceIdentity == null ? null : defaultInstanceIdentity!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'tags': ?tags,
      'trafficRoutingPolicy': ?trafficRoutingPolicy == null ? null : trafficRoutingPolicy!.toMap(),
    };
  }

  factory AgenticApplication.fromMap(Map<String, dynamic> map) {
    return AgenticApplication(
      agentIdentityBlueprint: map['agentIdentityBlueprint'] == null ? null : AssignedIdentity.fromMap((map['agentIdentityBlueprint'] as Map).cast<String, dynamic>()),
      agents: map['agents'] == null ? null : pulumi.Input.decodeList<AgentReference>(map['agents'], (value) => AgentReference.fromMap((value as Map).cast<String, dynamic>())),
      authorizationPolicy: map['authorizationPolicy'] == null ? null : ChannelsBuiltInAuthorizationPolicy.fromMap((map['authorizationPolicy'] as Map).cast<String, dynamic>()),
      baseUrl: map['baseUrl'] == null ? null : map['baseUrl'] as String,
      defaultInstanceIdentity: map['defaultInstanceIdentity'] == null ? null : AssignedIdentity.fromMap((map['defaultInstanceIdentity'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trafficRoutingPolicy: map['trafficRoutingPolicy'] == null ? null : ApplicationTrafficRoutingPolicy.fromMap((map['trafficRoutingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

