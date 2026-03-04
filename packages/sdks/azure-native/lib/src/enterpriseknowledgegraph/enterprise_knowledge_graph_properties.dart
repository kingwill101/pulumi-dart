// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the EnterpriseKnowledgeGraph.
class EnterpriseKnowledgeGraphProperties {
  /// The description of the EnterpriseKnowledgeGraph
  final pulumi.Input<String>? description;

  /// Specifies the metadata  of the resource.
  final pulumi.Input<dynamic>? metadata;

  /// The state of EnterpriseKnowledgeGraph provisioning
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [EnterpriseKnowledgeGraphProperties].
  /// [description] The description of the EnterpriseKnowledgeGraph
  /// [metadata] Specifies the metadata  of the resource.
  /// [provisioningState] The state of EnterpriseKnowledgeGraph provisioning
  EnterpriseKnowledgeGraphProperties({
    this.description,
    this.metadata,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'metadata': ?metadata,
      'provisioningState': ?provisioningState,
    };
  }

  factory EnterpriseKnowledgeGraphProperties.fromMap(Map<String, dynamic> map) {
    return EnterpriseKnowledgeGraphProperties(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
