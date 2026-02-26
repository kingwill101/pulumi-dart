// ignore_for_file: unused_element, unnecessary_cast

class ExampleMessageChunkAgentTransfer {
  /// (Output)
  /// Display name of the agent.
  final String? displayName;

  /// The agent to which the conversation is being transferred. The agent will
  /// handle the conversation from this point forward.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String targetAgent;

  ExampleMessageChunkAgentTransfer({
    this.displayName,
    required this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['targetAgent'] = targetAgent;
    return map;
  }

  factory ExampleMessageChunkAgentTransfer.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkAgentTransfer(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      targetAgent: map['targetAgent'] as String,
    );
  }
}
