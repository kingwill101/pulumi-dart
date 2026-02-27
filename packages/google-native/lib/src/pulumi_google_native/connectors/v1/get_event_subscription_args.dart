// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEventSubscription.
class GetEventSubscriptionArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> eventSubscriptionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      eventSubscriptionId:
          pulumi.Input.asInput<String>(map['eventSubscriptionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
