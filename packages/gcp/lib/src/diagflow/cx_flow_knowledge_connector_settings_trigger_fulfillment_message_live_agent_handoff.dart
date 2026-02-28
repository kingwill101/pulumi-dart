// ignore_for_file: unused_element, unnecessary_cast


class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}

