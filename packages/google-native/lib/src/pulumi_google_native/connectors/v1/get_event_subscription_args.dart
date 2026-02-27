// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEventSubscription.
class GetEventSubscriptionArgs {
  final Input<String> connectionId;
  final Input<String> eventSubscriptionId;
  final Input<String> location;
  final Input<String>? project;

  GetEventSubscriptionArgs({
    required this.connectionId,
    required this.eventSubscriptionId,
    required this.location,
    this.project,
  });

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
      connectionId: Input.asInput<String>(map['connectionId']),
      eventSubscriptionId: Input.asInput<String>(map['eventSubscriptionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
