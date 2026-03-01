// ignore_for_file: unused_element, unnecessary_cast


class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference {
  /// A human readable description of the diff, showing the actual output vs expected output.
  final String? description;
  /// The type of diff.
  /// * INTENT: The intent.
  /// * PAGE: The page.
  /// * PARAMETERS: The parameters.
  /// * UTTERANCE: The message utterance.
  /// * FLOW: The flow.
  /// Possible values are: `INTENT`, `PAGE`, `PARAMETERS`, `UTTERANCE`, `FLOW`.
  final String? type;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference].
  /// [description] A human readable description of the diff, showing the actual output vs expected output.
  /// [type] The type of diff.
  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference({
    this.description,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'type': ?type,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference(
      description: map['description'] == null ? null : map['description'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

