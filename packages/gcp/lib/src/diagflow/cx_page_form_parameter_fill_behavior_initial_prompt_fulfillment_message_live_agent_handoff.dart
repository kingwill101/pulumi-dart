// ignore_for_file: unused_element, unnecessary_cast


class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}

