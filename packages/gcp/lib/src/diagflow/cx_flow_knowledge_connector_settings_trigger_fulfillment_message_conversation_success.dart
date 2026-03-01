// ignore_for_file: unused_element, unnecessary_cast

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
