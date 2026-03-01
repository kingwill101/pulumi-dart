// ignore_for_file: unused_element, unnecessary_cast


/// Synapse notebook reference type.
class SynapseNotebookReference {
  /// Reference notebook name. Type: string (or Expression with resultType string).
  final dynamic referenceName;
  /// Synapse notebook reference type.
  final String type;

  /// Creates a new [SynapseNotebookReference].
  /// [referenceName] Reference notebook name. Type: string (or Expression with resultType string).
  /// [type] Synapse notebook reference type.
  SynapseNotebookReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SynapseNotebookReference.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookReference(
      referenceName: map['referenceName'],
      type: map['type'] as String,
    );
  }
}

