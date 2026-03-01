// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionRuleCorrelationFilter {
  /// Content type of the message.
  final String? contentType;
  /// Identifier of the correlation.
  final String? correlationId;
  /// Application specific label.
  final String? label;
  /// Identifier of the message.
  final String? messageId;
  /// A list of user defined properties to be included in the filter. Specified as a map of name/value pairs.
  ///
  /// > **Note:** When creating a subscription rule of type `CorrelationFilter` at least one property must be set in the `correlation_filter` block.
  final Map<String, String>? properties;
  /// Address of the queue to reply to.
  final String? replyTo;
  /// Session identifier to reply to.
  final String? replyToSessionId;
  /// Session identifier.
  final String? sessionId;
  /// Address to send to.
  final String? to;

  /// Creates a new [SubscriptionRuleCorrelationFilter].
  /// [contentType] Content type of the message.
  /// [correlationId] Identifier of the correlation.
  /// [label] Application specific label.
  /// [messageId] Identifier of the message.
  /// [properties] A list of user defined properties to be included in the filter. Specified as a map of name/value pairs.
  /// [replyTo] Address of the queue to reply to.
  /// [replyToSessionId] Session identifier to reply to.
  /// [sessionId] Session identifier.
  /// [to] Address to send to.
  SubscriptionRuleCorrelationFilter({
    this.contentType,
    this.correlationId,
    this.label,
    this.messageId,
    this.properties,
    this.replyTo,
    this.replyToSessionId,
    this.sessionId,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'correlationId': ?correlationId,
      'label': ?label,
      'messageId': ?messageId,
      'properties': ?properties,
      'replyTo': ?replyTo,
      'replyToSessionId': ?replyToSessionId,
      'sessionId': ?sessionId,
      'to': ?to,
    };
  }

  factory SubscriptionRuleCorrelationFilter.fromMap(Map<String, dynamic> map) {
    return SubscriptionRuleCorrelationFilter(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      correlationId: map['correlationId'] == null ? null : map['correlationId'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      replyTo: map['replyTo'] == null ? null : map['replyTo'] as String,
      replyToSessionId: map['replyToSessionId'] == null ? null : map['replyToSessionId'] as String,
      sessionId: map['sessionId'] == null ? null : map['sessionId'] as String,
      to: map['to'] == null ? null : map['to'] as String,
    );
  }
}

