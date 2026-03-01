// ignore_for_file: unused_element, unnecessary_cast


class ServiceBusBrokeredMessagePropertiesResponse {
  /// Gets or sets the content type.
  final String? contentType;
  /// Gets or sets the correlation ID.
  final String? correlationId;
  /// Gets or sets the force persistence.
  final bool? forcePersistence;
  /// Gets or sets the label.
  final String? label;
  /// Gets or sets the message ID.
  final String? messageId;
  /// Gets or sets the partition key.
  final String? partitionKey;
  /// Gets or sets the reply to.
  final String? replyTo;
  /// Gets or sets the reply to session ID.
  final String? replyToSessionId;
  /// Gets or sets the scheduled enqueue time UTC.
  final String? scheduledEnqueueTimeUtc;
  /// Gets or sets the session ID.
  final String? sessionId;
  /// Gets or sets the time to live.
  final String? timeToLive;
  /// Gets or sets the to.
  final String? to;
  /// Gets or sets the via partition key.
  final String? viaPartitionKey;

  /// Creates a new [ServiceBusBrokeredMessagePropertiesResponse].
  /// [contentType] Gets or sets the content type.
  /// [correlationId] Gets or sets the correlation ID.
  /// [forcePersistence] Gets or sets the force persistence.
  /// [label] Gets or sets the label.
  /// [messageId] Gets or sets the message ID.
  /// [partitionKey] Gets or sets the partition key.
  /// [replyTo] Gets or sets the reply to.
  /// [replyToSessionId] Gets or sets the reply to session ID.
  /// [scheduledEnqueueTimeUtc] Gets or sets the scheduled enqueue time UTC.
  /// [sessionId] Gets or sets the session ID.
  /// [timeToLive] Gets or sets the time to live.
  /// [to] Gets or sets the to.
  /// [viaPartitionKey] Gets or sets the via partition key.
  ServiceBusBrokeredMessagePropertiesResponse({
    this.contentType,
    this.correlationId,
    this.forcePersistence,
    this.label,
    this.messageId,
    this.partitionKey,
    this.replyTo,
    this.replyToSessionId,
    this.scheduledEnqueueTimeUtc,
    this.sessionId,
    this.timeToLive,
    this.to,
    this.viaPartitionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'correlationId': ?correlationId,
      'forcePersistence': ?forcePersistence,
      'label': ?label,
      'messageId': ?messageId,
      'partitionKey': ?partitionKey,
      'replyTo': ?replyTo,
      'replyToSessionId': ?replyToSessionId,
      'scheduledEnqueueTimeUtc': ?scheduledEnqueueTimeUtc,
      'sessionId': ?sessionId,
      'timeToLive': ?timeToLive,
      'to': ?to,
      'viaPartitionKey': ?viaPartitionKey,
    };
  }

  factory ServiceBusBrokeredMessagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusBrokeredMessagePropertiesResponse(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      correlationId: map['correlationId'] == null ? null : map['correlationId'] as String,
      forcePersistence: map['forcePersistence'] == null ? null : map['forcePersistence'] as bool,
      label: map['label'] == null ? null : map['label'] as String,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      replyTo: map['replyTo'] == null ? null : map['replyTo'] as String,
      replyToSessionId: map['replyToSessionId'] == null ? null : map['replyToSessionId'] as String,
      scheduledEnqueueTimeUtc: map['scheduledEnqueueTimeUtc'] == null ? null : map['scheduledEnqueueTimeUtc'] as String,
      sessionId: map['sessionId'] == null ? null : map['sessionId'] as String,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as String,
      to: map['to'] == null ? null : map['to'] as String,
      viaPartitionKey: map['viaPartitionKey'] == null ? null : map['viaPartitionKey'] as String,
    );
  }
}

