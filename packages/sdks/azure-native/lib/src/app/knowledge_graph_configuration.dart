// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Knowledge graph configuration for agent
class KnowledgeGraphConfiguration {
  /// The identity used to access the knowledge graph
  final pulumi.Input<String>? identity;
  /// The list of resources managed by agent
  final pulumi.Input<List<String>>? managedResources;

  /// Creates a new [KnowledgeGraphConfiguration].
  /// [identity] The identity used to access the knowledge graph
  /// [managedResources] The list of resources managed by agent
  const KnowledgeGraphConfiguration({
    this.identity,
    this.managedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'managedResources': ?managedResources,
    };
  }

  factory KnowledgeGraphConfiguration.fromMap(Map<String, dynamic> map) {
    return KnowledgeGraphConfiguration(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResources: (() { final guardedValue = map['managedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
