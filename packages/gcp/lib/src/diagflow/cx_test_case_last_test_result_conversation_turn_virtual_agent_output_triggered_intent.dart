// ignore_for_file: unused_element, unnecessary_cast


class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent {
  /// (Output)
  /// The human-readable name of the intent, unique within the agent.
  final String? displayName;
  /// The unique identifier of the intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>.
  final String? name;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent].
  /// [displayName] (Output)
  /// [name] The unique identifier of the intent.
  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

