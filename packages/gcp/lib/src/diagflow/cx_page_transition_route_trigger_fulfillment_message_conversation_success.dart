// ignore_for_file: unused_element, unnecessary_cast

class CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
