// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'event_filter.dart';
import 'event_trigger_retry_policy.dart';

/// Describes EventTrigger, used to request events to be sent from another service.
class EventTrigger2 {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final String? channel;

  /// Criteria used to filter events.
  final List<EventFilter>? eventFilters;

  /// The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  final String eventType;

  /// Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  final String? pubsubTopic;

  /// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  final EventTriggerRetryPolicy? retryPolicy;

  /// Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  final String? serviceAccountEmail;

  /// The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  final String? triggerRegion;

  EventTrigger2({
    this.channel,
    this.eventFilters,
    required this.eventType,
    this.pubsubTopic,
    this.retryPolicy,
    this.serviceAccountEmail,
    this.triggerRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    final eventFiltersValue = eventFilters;
    if (eventFiltersValue != null) {
      map['eventFilters'] = Input.encodeList<EventFilter, Map<String, dynamic>>(
          eventFiltersValue, (value) => value.toMap());
    }
    map['eventType'] = eventType;
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] = pubsubTopicValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = retryPolicyValue.value;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final triggerRegionValue = triggerRegion;
    if (triggerRegionValue != null) {
      map['triggerRegion'] = triggerRegionValue;
    }
    return map;
  }

  factory EventTrigger2.fromMap(Map<String, dynamic> map) {
    return EventTrigger2(
      channel: map['channel'] == null ? null : map['channel'] as String,
      eventFilters: map['eventFilters'] == null
          ? null
          : Input.decodeList<EventFilter>(
              map['eventFilters'],
              (value) =>
                  EventFilter.fromMap((value as Map).cast<String, dynamic>())),
      eventType: map['eventType'] as String,
      pubsubTopic:
          map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      retryPolicy: map['retryPolicy'] == null
          ? null
          : EventTriggerRetryPolicy.fromValue(map['retryPolicy'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      triggerRegion:
          map['triggerRegion'] == null ? null : map['triggerRegion'] as String,
    );
  }
}
