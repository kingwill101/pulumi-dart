// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Event Hub input data source that contains stream data.
class EventHubStreamInputDataSource {
  /// Authentication Mode.
  final String? authenticationMode;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not specified, the input uses the Event Hub’s default consumer group.
  final String? consumerGroupName;
  /// The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  final String? eventHubName;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyName;
  /// Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.ServiceBus/EventHub'.
  final String type;

  /// Creates a new [EventHubStreamInputDataSource].
  /// [authenticationMode] Authentication Mode.
  /// [consumerGroupName] The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not specified, the input uses the Event Hub’s default consumer group.
  /// [eventHubName] The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  EventHubStreamInputDataSource({
    this.authenticationMode,
    this.consumerGroupName,
    this.eventHubName,
    this.serviceBusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'consumerGroupName': ?consumerGroupName,
      'eventHubName': ?eventHubName,
      'serviceBusNamespace': ?serviceBusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'type': type,
    };
  }

  factory EventHubStreamInputDataSource.fromMap(Map<String, dynamic> map) {
    return EventHubStreamInputDataSource(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      consumerGroupName: map['consumerGroupName'] == null ? null : map['consumerGroupName'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : map['serviceBusNamespace'] as String,
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : map['sharedAccessPolicyKey'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : map['sharedAccessPolicyName'] as String,
      type: map['type'] as String,
    );
  }
}

