// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Synapse notebook reference type.
class SynapseNotebookReferenceResponse {
  /// Reference notebook name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> referenceName;

  /// Synapse notebook reference type.
  final pulumi.Input<String> type;

  /// Creates a new [SynapseNotebookReferenceResponse].
  /// [referenceName] Reference notebook name. Type: string (or Expression with resultType string).
  /// [type] Synapse notebook reference type.
  SynapseNotebookReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'referenceName': referenceName, 'type': type};
  }

  factory SynapseNotebookReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookReferenceResponse(
      referenceName: pulumi.Input.fromValue(map['referenceName']),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
