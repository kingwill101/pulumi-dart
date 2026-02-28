// ignore_for_file: unused_element, unnecessary_cast


class CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess.fromMap(Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}

