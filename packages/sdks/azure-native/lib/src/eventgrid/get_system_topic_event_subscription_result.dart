// ignore_for_file: unused_element, unnecessary_cast

import 'azure_function_event_subscription_destination_response.dart';
import 'dead_letter_with_resource_identity_response.dart';
import 'delivery_with_resource_identity_response.dart';
import 'event_subscription_filter_response.dart';
import 'retry_policy_response.dart';
import 'storage_blob_dead_letter_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSystemTopicEventSubscription.
class GetSystemTopicEventSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final StorageBlobDeadLetterDestinationResponse? deadLetterDestination;
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final DeadLetterWithResourceIdentityResponse? deadLetterWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  final DeliveryWithResourceIdentityResponse? deliveryWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  final AzureFunctionEventSubscriptionDestinationResponse? destination;
  /// The event delivery schema for the event subscription.
  final String? eventDeliverySchema;
  /// Expiration time of the event subscription.
  final String? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final EventSubscriptionFilterResponse? filter;
  /// Fully qualified identifier of the resource.
  final String id;
  /// List of user defined labels.
  final List<String>? labels;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the event subscription.
  final String provisioningState;
  /// The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  final RetryPolicyResponse? retryPolicy;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Name of the topic of the event subscription.
  final String topic;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetSystemTopicEventSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deadLetterDestination] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deadLetterWithResourceIdentity] The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// [deliveryWithResourceIdentity] Information about the destination where events have to be delivered for the event subscription.
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filter] Information about the filter for the event subscription.
  /// [id] Fully qualified identifier of the resource.
  /// [labels] List of user defined labels.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the event subscription.
  /// [retryPolicy] The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [topic] Name of the topic of the event subscription.
  /// [type] Type of the resource.
  GetSystemTopicEventSubscriptionResult({
    required this.azureApiVersion,
    this.deadLetterDestination,
    this.deadLetterWithResourceIdentity,
    this.deliveryWithResourceIdentity,
    this.destination,
    this.eventDeliverySchema,
    this.expirationTimeUtc,
    this.filter,
    required this.id,
    this.labels,
    required this.name,
    required this.provisioningState,
    this.retryPolicy,
    required this.systemData,
    required this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deadLetterDestination': ?deadLetterDestination == null ? null : deadLetterDestination!.toMap(),
      'deadLetterWithResourceIdentity': ?deadLetterWithResourceIdentity == null ? null : deadLetterWithResourceIdentity!.toMap(),
      'deliveryWithResourceIdentity': ?deliveryWithResourceIdentity == null ? null : deliveryWithResourceIdentity!.toMap(),
      'destination': ?destination == null ? null : destination!.toMap(),
      'eventDeliverySchema': ?eventDeliverySchema,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'labels': ?labels,
      'name': name,
      'provisioningState': provisioningState,
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'systemData': systemData.toMap(),
      'topic': topic,
      'type': type,
    };
  }

  factory GetSystemTopicEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deadLetterDestination: map['deadLetterDestination'] == null ? null : StorageBlobDeadLetterDestinationResponse.fromMap((map['deadLetterDestination']! as Map).cast<String, dynamic>()),
      deadLetterWithResourceIdentity: map['deadLetterWithResourceIdentity'] == null ? null : DeadLetterWithResourceIdentityResponse.fromMap((map['deadLetterWithResourceIdentity']! as Map).cast<String, dynamic>()),
      deliveryWithResourceIdentity: map['deliveryWithResourceIdentity'] == null ? null : DeliveryWithResourceIdentityResponse.fromMap((map['deliveryWithResourceIdentity']! as Map).cast<String, dynamic>()),
      destination: map['destination'] == null ? null : AzureFunctionEventSubscriptionDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>()),
      eventDeliverySchema: map['eventDeliverySchema'] == null ? null : map['eventDeliverySchema']! as String,
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : map['expirationTimeUtc']! as String,
      filter: map['filter'] == null ? null : EventSubscriptionFilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels']! as List).cast<String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      retryPolicy: map['retryPolicy'] == null ? null : RetryPolicyResponse.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      topic: map['topic'] as String,
      type: map['type'] as String,
    );
  }
}

