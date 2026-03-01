// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the EnterpriseKnowledgeGraph.
class EnterpriseKnowledgeGraphProperties {
  /// The description of the EnterpriseKnowledgeGraph
  final String? description;
  /// Specifies the metadata  of the resource.
  final dynamic metadata;
  /// The state of EnterpriseKnowledgeGraph provisioning
  final String? provisioningState;

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
      description: map['description'] == null ? null : map['description'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

