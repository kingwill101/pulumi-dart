// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Knowledge graph configuration for agent
class KnowledgeGraphConfigurationResponse {
  /// The identity used to access the knowledge graph
  final pulumi.Input<String?>? identity;
  /// The list of resources managed by agent
  final pulumi.Input<List<String>?>? managedResources;

  /// Creates a new [KnowledgeGraphConfigurationResponse].
  /// [identity] The identity used to access the knowledge graph
  /// [managedResources] The list of resources managed by agent
  const KnowledgeGraphConfigurationResponse({
    this.identity,
    this.managedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'managedResources': ?managedResources,
    };
  }

  factory KnowledgeGraphConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return KnowledgeGraphConfigurationResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResources: (() { final guardedValue = map['managedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
