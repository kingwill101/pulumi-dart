// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotExampleMessageChunkAgentTransfer {
  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The agent to which the conversation is being transferred. The agent will
  /// handle the conversation from this point forward.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String? targetAgent;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkAgentTransfer].
  /// [displayName] The display name of the app version.
  /// [targetAgent] (Output)
  AppVersionSnapshotExampleMessageChunkAgentTransfer({
    this.displayName,
    this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'targetAgent': ?targetAgent,
    };
  }

  factory AppVersionSnapshotExampleMessageChunkAgentTransfer.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotExampleMessageChunkAgentTransfer(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      targetAgent: map['targetAgent'] == null
          ? null
          : map['targetAgent'] as String,
    );
  }
}
