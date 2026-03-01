// ignore_for_file: unused_element, unnecessary_cast

class CxPageEntryFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageEntryFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageEntryFulfillmentMessageLiveAgentHandoff({this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxPageEntryFulfillmentMessageLiveAgentHandoff.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageEntryFulfillmentMessageLiveAgentHandoff(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}
