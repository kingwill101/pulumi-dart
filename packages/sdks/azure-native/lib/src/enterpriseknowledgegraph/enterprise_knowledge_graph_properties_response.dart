// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the EnterpriseKnowledgeGraph.
class EnterpriseKnowledgeGraphPropertiesResponse {
  /// The description of the EnterpriseKnowledgeGraph
  final pulumi.Input<String?>? description;
  /// Specifies the metadata  of the resource.
  final pulumi.Input<dynamic>? metadata;
  /// The state of EnterpriseKnowledgeGraph provisioning
  final pulumi.Input<String?>? provisioningState;

  /// Creates a new [EnterpriseKnowledgeGraphPropertiesResponse].
  /// [description] The description of the EnterpriseKnowledgeGraph
  /// [metadata] Specifies the metadata  of the resource.
  /// [provisioningState] The state of EnterpriseKnowledgeGraph provisioning
  const EnterpriseKnowledgeGraphPropertiesResponse({
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

  factory EnterpriseKnowledgeGraphPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseKnowledgeGraphPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
