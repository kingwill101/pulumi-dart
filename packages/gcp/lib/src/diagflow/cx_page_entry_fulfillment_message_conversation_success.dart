// ignore_for_file: unused_element, unnecessary_cast

class CxPageEntryFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageEntryFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageEntryFulfillmentMessageConversationSuccess({this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxPageEntryFulfillmentMessageConversationSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageEntryFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
