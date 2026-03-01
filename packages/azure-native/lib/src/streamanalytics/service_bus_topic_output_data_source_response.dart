// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Service Bus Topic output data source.
class ServiceBusTopicOutputDataSourceResponse {
  /// Authentication Mode.
  final String? authenticationMode;
  /// A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  final List<String>? propertyColumns;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyName;
  /// The system properties associated with the Service Bus Topic Output. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  final Map<String, String>? systemPropertyColumns;
  /// The name of the Service Bus Topic. Required on PUT (CreateOrReplace) requests.
  final String? topicName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.ServiceBus/Topic'.
  final String type;

  /// Creates a new [ServiceBusTopicOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [propertyColumns] A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [systemPropertyColumns] The system properties associated with the Service Bus Topic Output. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  /// [topicName] The name of the Service Bus Topic. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  ServiceBusTopicOutputDataSourceResponse({
    this.authenticationMode,
    this.propertyColumns,
    this.serviceBusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.systemPropertyColumns,
    this.topicName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'propertyColumns': ?propertyColumns,
      'serviceBusNamespace': ?serviceBusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'systemPropertyColumns': ?systemPropertyColumns,
      'topicName': ?topicName,
      'type': type,
    };
  }

  factory ServiceBusTopicOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicOutputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      propertyColumns: map['propertyColumns'] == null ? null : (map['propertyColumns'] as List).cast<String>(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : map['serviceBusNamespace'] as String,
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : map['sharedAccessPolicyKey'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : map['sharedAccessPolicyName'] as String,
      systemPropertyColumns: map['systemPropertyColumns'] == null ? null : (map['systemPropertyColumns'] as Map).cast<String, String>(),
      topicName: map['topicName'] == null ? null : map['topicName'] as String,
      type: map['type'] as String,
    );
  }
}

