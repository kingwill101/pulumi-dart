// ignore_for_file: unused_element, unnecessary_cast

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
