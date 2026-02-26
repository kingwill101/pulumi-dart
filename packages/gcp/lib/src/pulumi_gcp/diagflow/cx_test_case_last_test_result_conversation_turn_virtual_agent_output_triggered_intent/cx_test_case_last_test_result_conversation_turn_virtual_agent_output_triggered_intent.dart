// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent {
  /// (Output)
  /// The human-readable name of the intent, unique within the agent.
  final String? displayName;

  /// The unique identifier of the intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>.
  final String? name;

  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
