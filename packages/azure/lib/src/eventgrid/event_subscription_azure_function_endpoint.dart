// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAzureFunctionEndpoint {
  /// Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  final String functionId;
  /// Maximum number of events per batch.
  final int? maxEventsPerBatch;
  /// Preferred batch size in Kilobytes.
  final int? preferredBatchSizeInKilobytes;

  /// Creates a new [EventSubscriptionAzureFunctionEndpoint].
  /// [functionId] Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  EventSubscriptionAzureFunctionEndpoint({
    required this.functionId,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'maxEventsPerBatch': ?maxEventsPerBatch,
      'preferredBatchSizeInKilobytes': ?preferredBatchSizeInKilobytes,
    };
  }

  factory EventSubscriptionAzureFunctionEndpoint.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAzureFunctionEndpoint(
      functionId: map['functionId'] as String,
      maxEventsPerBatch: map['maxEventsPerBatch'] == null ? null : map['maxEventsPerBatch'] as int,
      preferredBatchSizeInKilobytes: map['preferredBatchSizeInKilobytes'] == null ? null : map['preferredBatchSizeInKilobytes'] as int,
    );
  }
}

