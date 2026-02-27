// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_filter_cloudfunctions_v2alpha.dart';
import 'event_trigger_retry_policy_cloudfunctions_v2alpha.dart';

/// Describes EventTrigger, used to request events to be sent from another service.
class EventTriggerCloudfunctionsV2alpha {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final String? channel;

  /// Criteria used to filter events.
  final List<EventFilterCloudfunctionsV2alpha>? eventFilters;

  /// The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `google.cloud.pubsub.topic.v1.messagePublished`.
  final String eventType;

  /// Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: `projects/{project}/topics/{topic}`. This is only valid for events of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic provided here will not be deleted at function deletion.
  final String? pubsubTopic;

  /// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
  final EventTriggerRetryPolicyCloudfunctionsV2alpha? retryPolicy;

  /// Optional. The email of the trigger's service account. The service account must have permission to invoke Cloud Run services, the permission is `run.routes.invoke`. If empty, defaults to the Compute Engine default service account: `{project_number}-compute@developer.gserviceaccount.com`.
  final String? serviceAccountEmail;

  /// The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
  final String? triggerRegion;

  EventTriggerCloudfunctionsV2alpha({
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
      map['eventFilters'] = pulumi.Input.encodeList<
          EventFilterCloudfunctionsV2alpha,
          Map<String, dynamic>>(eventFiltersValue, (value) => value.toMap());
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

  factory EventTriggerCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return EventTriggerCloudfunctionsV2alpha(
      channel: map['channel'] == null ? null : map['channel'] as String,
      eventFilters: map['eventFilters'] == null
          ? null
          : pulumi.Input.decodeList<EventFilterCloudfunctionsV2alpha>(
              map['eventFilters'],
              (value) => EventFilterCloudfunctionsV2alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
      eventType: map['eventType'] as String,
      pubsubTopic:
          map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      retryPolicy: map['retryPolicy'] == null
          ? null
          : EventTriggerRetryPolicyCloudfunctionsV2alpha.fromValue(
              map['retryPolicy'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      triggerRegion:
          map['triggerRegion'] == null ? null : map['triggerRegion'] as String,
    );
  }
}
