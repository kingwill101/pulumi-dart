// ignore_for_file: unused_element, unnecessary_cast

import 'dead_letter_with_resource_identity_response.dart';
import 'delivery_with_resource_identity_response.dart';
import 'event_subscription_filter_response.dart';
import 'retry_policy_response.dart';
import 'storage_blob_dead_letter_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEventSubscription.
class GetEventSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
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
  final dynamic destination;
  /// The event delivery schema for the event subscription.
  final String? eventDeliverySchema;
  /// Expiration time of the event subscription.
  final String? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final EventSubscriptionFilterResponse? filter;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// List of user defined labels.
  final List<String>? labels;
  /// Name of the resource.
  final String? name;
  /// Provisioning state of the event subscription.
  final String? provisioningState;
  /// The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  final RetryPolicyResponse? retryPolicy;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Name of the topic of the event subscription.
  final String? topic;
  /// Type of the resource.
  final String? type;

  /// Creates a new [GetEventSubscriptionResult].
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
  GetEventSubscriptionResult({
    this.azureApiVersion,
    this.deadLetterDestination,
    this.deadLetterWithResourceIdentity,
    this.deliveryWithResourceIdentity,
    this.destination,
    String? eventDeliverySchema,
    this.expirationTimeUtc,
    this.filter,
    this.id,
    this.labels,
    this.name,
    this.provisioningState,
    this.retryPolicy,
    this.systemData,
    this.topic,
    this.type,
  }) : eventDeliverySchema = eventDeliverySchema ?? 'EventGridSchema';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deadLetterDestination': ?deadLetterDestination?.toMap(),
      'deadLetterWithResourceIdentity': ?deadLetterWithResourceIdentity?.toMap(),
      'deliveryWithResourceIdentity': ?deliveryWithResourceIdentity?.toMap(),
      'destination': ?destination,
      'eventDeliverySchema': ?eventDeliverySchema,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'retryPolicy': ?retryPolicy?.toMap(),
      'systemData': ?systemData?.toMap(),
      'topic': ?topic,
      'type': ?type,
    };
  }

  factory GetEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deadLetterDestination: (() { final guardedValue = map['deadLetterDestination']; if (guardedValue == null) return null; return StorageBlobDeadLetterDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deadLetterWithResourceIdentity: (() { final guardedValue = map['deadLetterWithResourceIdentity']; if (guardedValue == null) return null; return DeadLetterWithResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deliveryWithResourceIdentity: (() { final guardedValue = map['deliveryWithResourceIdentity']; if (guardedValue == null) return null; return DeliveryWithResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue; })(),
      eventDeliverySchema: (() { final guardedValue = map['eventDeliverySchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTimeUtc: (() { final guardedValue = map['expirationTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return EventSubscriptionFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return RetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
