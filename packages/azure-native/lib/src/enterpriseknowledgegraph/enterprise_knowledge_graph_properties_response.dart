// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the EnterpriseKnowledgeGraph.
class EnterpriseKnowledgeGraphPropertiesResponse {
  /// The description of the EnterpriseKnowledgeGraph
  final String? description;
  /// Specifies the metadata  of the resource.
  final dynamic metadata;
  /// The state of EnterpriseKnowledgeGraph provisioning
  final String? provisioningState;

  /// Creates a new [EnterpriseKnowledgeGraphPropertiesResponse].
  /// [description] The description of the EnterpriseKnowledgeGraph
  /// [metadata] Specifies the metadata  of the resource.
  /// [provisioningState] The state of EnterpriseKnowledgeGraph provisioning
  EnterpriseKnowledgeGraphPropertiesResponse({
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
      description: map['description'] == null ? null : map['description'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

