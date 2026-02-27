// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_function_event_trigger_event_filter/get_function_event_trigger_event_filter.dart';

class GetFunctionEventTriggerCloudfunctionsv2 {
  /// Criteria used to filter events.
  final List<GetFunctionEventTriggerEventFilter> eventFilters;

  /// Required. The type of event to observe.
  final String eventType;

  /// The name of a Pub/Sub topic in the same project that will be used
  /// as the transport topic for the event delivery.
  final String pubsubTopic;

  /// Describes the retry policy in case of function's execution failure.
  /// Retried execution is charged as any other execution. Possible values: ["RETRY_POLICY_UNSPECIFIED", "RETRY_POLICY_DO_NOT_RETRY", "RETRY_POLICY_RETRY"]
  final String retryPolicy;

  /// Optional. The email of the trigger's service account. The service account
  /// must have permission to invoke Cloud Run services. If empty, defaults to the
  /// Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com.
  final String serviceAccountEmail;

  /// Output only. The resource name of the Eventarc trigger.
  final String trigger;

  /// The region that the trigger will be in. The trigger will only receive
  /// events originating in this region. It can be the same
  /// region as the function, a different region or multi-region, or the global
  /// region. If not provided, defaults to the same region as the function.
  final String triggerRegion;

  GetFunctionEventTriggerCloudfunctionsv2({
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
    map['eventFilters'] = pulumi.Input.encodeList<
        GetFunctionEventTriggerEventFilter,
        Map<String, dynamic>>(eventFilters, (value) => value.toMap());
    map['eventType'] = eventType;
    map['pubsubTopic'] = pubsubTopic;
    map['retryPolicy'] = retryPolicy;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['trigger'] = trigger;
    map['triggerRegion'] = triggerRegion;
    return map;
  }

  factory GetFunctionEventTriggerCloudfunctionsv2.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionEventTriggerCloudfunctionsv2(
      eventFilters: pulumi.Input.decodeList<GetFunctionEventTriggerEventFilter>(
          map['eventFilters'],
          (value) => GetFunctionEventTriggerEventFilter.fromMap(
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
