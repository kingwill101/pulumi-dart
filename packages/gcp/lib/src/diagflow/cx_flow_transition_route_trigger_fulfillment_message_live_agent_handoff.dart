// ignore_for_file: unused_element, unnecessary_cast

class CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    return map;
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff.fromMap(
      Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
