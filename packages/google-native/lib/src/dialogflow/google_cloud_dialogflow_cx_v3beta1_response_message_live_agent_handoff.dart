// ignore_for_file: unused_element, unnecessary_cast

/// Indicates that the conversation should be handed off to a live agent. Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates something went extremely wrong in the conversation. * In a webhook response when you determine that the customer issue can only be handled by a human.
class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff {
  /// Custom metadata for your handoff procedure. Dialogflow doesn't impose any structure on this.
  final Map<String, String>? metadata;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff].
  /// [metadata] Custom metadata for your handoff procedure. Dialogflow doesn't impose any structure on this.
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
