// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'event_filter_response.dart';

/// Describes EventTrigger, used to request events to be sent from another service.
class EventTriggerResponse2 {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final String channel;

  /// Criteria used to filter events.
  final List<EventFilterResponse> eventFilters;

  /// The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  final String eventType;

  /// Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  final String pubsubTopic;

  /// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  final String retryPolicy;

  /// Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  final String serviceAccountEmail;

  /// The resource name of the Eventarc trigger. The format of this field is `projects/{project}/locations/{region}/triggers/{trigger}`.
  final String trigger;

  /// The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  final String triggerRegion;

  EventTriggerResponse2({
    required this.channel,
    required this.eventFilters,
    required this.eventType,
    required this.pubsubTopic,
    required this.retryPolicy,
    required this.serviceAccountEmail,
    required this.trigger,
    required this.triggerRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['eventFilters'] =
        Input.encodeList<EventFilterResponse, Map<String, dynamic>>(
            eventFilters, (value) => value.toMap());
    map['eventType'] = eventType;
    map['pubsubTopic'] = pubsubTopic;
    map['retryPolicy'] = retryPolicy;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['trigger'] = trigger;
    map['triggerRegion'] = triggerRegion;
    return map;
  }

  factory EventTriggerResponse2.fromMap(Map<String, dynamic> map) {
    return EventTriggerResponse2(
      channel: map['channel'] as String,
      eventFilters: Input.decodeList<EventFilterResponse>(
          map['eventFilters'],
          (value) => EventFilterResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      eventType: map['eventType'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
      retryPolicy: map['retryPolicy'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      trigger: map['trigger'] as String,
      triggerRegion: map['triggerRegion'] as String,
    );
  }
}
