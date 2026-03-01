// ignore_for_file: unused_element, unnecessary_cast

import 'failure_policy_response.dart';

/// Describes EventTrigger, used to request events be sent from another service.
class EventTriggerResponse {
  /// The type of event to observe. For example: `providers/cloud.storage/eventTypes/object.change` and `providers/cloud.pubsub/eventTypes/topic.publish`. Event types match pattern `providers/*/eventTypes/*.*`. The pattern contains: 1. namespace: For example, `cloud.storage` and `google.firebase.analytics`. 2. resource type: The type of resource on which event occurs. For example, the Google Cloud Storage API includes the type `object`. 3. action: The action that generates the event. For example, action for a Google Cloud Storage Object is 'change'. These parts are lower case.
  final String eventType;

  /// Specifies policy for failed executions.
  final FailurePolicyResponse failurePolicy;

  /// The resource(s) from which to observe events, for example, `projects/_/buckets/myBucket`. Not all syntactically correct values are accepted by all services. For example: 1. The authorization model must support it. Google Cloud Functions only allows EventTriggers to be deployed that observe resources in the same project as the `CloudFunction`. 2. The resource type must match the pattern expected for an `event_type`. For example, an `EventTrigger` that has an `event_type` of "google.pubsub.topic.publish" should have a resource that matches Google Cloud Pub/Sub topics. Additionally, some services may support short names when creating an `EventTrigger`. These will always be returned in the normalized "long" format. See each *service's* documentation for supported formats.
  final String resource;

  /// The hostname of the service that should be observed. If no string is provided, the default service implementing the API will be used. For example, `storage.googleapis.com` is the default for all event types in the `google.storage` namespace.
  final String service;

  /// Creates a new [EventTriggerResponse].
  /// [eventType] The type of event to observe. For example: `providers/cloud.storage/eventTypes/object.change` and `providers/cloud.pubsub/eventTypes/topic.publish`. Event types match pattern `providers/*/eventTypes/*.*`. The pattern contains: 1. namespace: For example, `cloud.storage` and `google.firebase.analytics`. 2. resource type: The type of resource on which event occurs. For example, the Google Cloud Storage API includes the type `object`. 3. action: The action that generates the event. For example, action for a Google Cloud Storage Object is 'change'. These parts are lower case.
  /// [failurePolicy] Specifies policy for failed executions.
  /// [resource] The resource(s) from which to observe events, for example, `projects/_/buckets/myBucket`. Not all syntactically correct values are accepted by all services. For example: 1. The authorization model must support it. Google Cloud Functions only allows EventTriggers to be deployed that observe resources in the same project as the `CloudFunction`. 2. The resource type must match the pattern expected for an `event_type`. For example, an `EventTrigger` that has an `event_type` of "google.pubsub.topic.publish" should have a resource that matches Google Cloud Pub/Sub topics. Additionally, some services may support short names when creating an `EventTrigger`. These will always be returned in the normalized "long" format. See each *service's* documentation for supported formats.
  /// [service] The hostname of the service that should be observed. If no string is provided, the default service implementing the API will be used. For example, `storage.googleapis.com` is the default for all event types in the `google.storage` namespace.
  EventTriggerResponse({
    required this.eventType,
    required this.failurePolicy,
    required this.resource,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'failurePolicy': failurePolicy.toMap(),
      'resource': resource,
      'service': service,
    };
  }

  factory EventTriggerResponse.fromMap(Map<String, dynamic> map) {
    return EventTriggerResponse(
      eventType: map['eventType'] as String,
      failurePolicy: FailurePolicyResponse.fromMap(
        (map['failurePolicy'] as Map).cast<String, dynamic>(),
      ),
      resource: map['resource'] as String,
      service: map['service'] as String,
    );
  }
}
