// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Synapse notebook reference type.
class SynapseNotebookReference {
  /// Reference notebook name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> referenceName;
  /// Synapse notebook reference type.
  final pulumi.Input<dynamic> type;

  /// Creates a new [SynapseNotebookReference].
  /// [referenceName] Reference notebook name. Type: string (or Expression with resultType string).
  /// [type] Synapse notebook reference type.
  const SynapseNotebookReference({
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
      referenceName: pulumi.Input.fromValue(map['referenceName']),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
