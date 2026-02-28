// ignore_for_file: unused_element, unnecessary_cast

class ChatEngineChatEngineMetadata {
  /// (Output)
  /// The resource name of a Dialogflow agent, that this Chat Engine refers to.
  final String? dialogflowAgent;

  /// Creates a new [ChatEngineChatEngineMetadata].
  /// [dialogflowAgent] (Output)
  ChatEngineChatEngineMetadata({
    this.dialogflowAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dialogflowAgentValue = dialogflowAgent;
    if (dialogflowAgentValue != null) {
      map['dialogflowAgent'] = dialogflowAgentValue;
    }
    return map;
  }

  factory ChatEngineChatEngineMetadata.fromMap(Map<String, dynamic> map) {
    return ChatEngineChatEngineMetadata(
      dialogflowAgent: map['dialogflowAgent'] == null
          ? null
          : map['dialogflowAgent'] as String,
    );
  }
}
