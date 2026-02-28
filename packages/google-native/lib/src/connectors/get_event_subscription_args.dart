// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_event_subscription_args_doc}
/// Arguments for getEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_event_subscription_args_doc}
class GetEventSubscriptionArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> eventSubscriptionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEventSubscriptionArgs].
  /// [connectionId] Required.
  /// [eventSubscriptionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEventSubscriptionArgs({
    required String connectionId,
    required String eventSubscriptionId,
    required String location,
    String? project,
  })  : connectionId = pulumi.Input.asInput<String>(connectionId),
        eventSubscriptionId = pulumi.Input.asInput<String>(eventSubscriptionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['eventSubscriptionId'] = eventSubscriptionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionArgs(
      connectionId: map['connectionId'] as String,
      eventSubscriptionId: map['eventSubscriptionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
