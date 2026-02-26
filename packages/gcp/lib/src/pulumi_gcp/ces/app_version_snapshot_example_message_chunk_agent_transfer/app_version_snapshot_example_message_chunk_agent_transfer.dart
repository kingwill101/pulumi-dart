// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotExampleMessageChunkAgentTransfer {
  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The agent to which the conversation is being transferred. The agent will
  /// handle the conversation from this point forward.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String? targetAgent;

  AppVersionSnapshotExampleMessageChunkAgentTransfer({
    this.displayName,
    this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final targetAgentValue = targetAgent;
    if (targetAgentValue != null) {
      map['targetAgent'] = targetAgentValue;
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessageChunkAgentTransfer.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkAgentTransfer(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      targetAgent:
          map['targetAgent'] == null ? null : map['targetAgent'] as String,
    );
  }
}
