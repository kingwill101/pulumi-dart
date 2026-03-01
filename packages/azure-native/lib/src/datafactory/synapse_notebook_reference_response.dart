// ignore_for_file: unused_element, unnecessary_cast


/// Synapse notebook reference type.
class SynapseNotebookReferenceResponse {
  /// Reference notebook name. Type: string (or Expression with resultType string).
  final dynamic referenceName;
  /// Synapse notebook reference type.
  final String type;

  /// Creates a new [SynapseNotebookReferenceResponse].
  /// [referenceName] Reference notebook name. Type: string (or Expression with resultType string).
  /// [type] Synapse notebook reference type.
  SynapseNotebookReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SynapseNotebookReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookReferenceResponse(
      referenceName: map['referenceName'],
      type: map['type'] as String,
    );
  }
}

