// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Monitor Alert destination for an event subscription.
class MonitorAlertEventSubscriptionDestination {
  /// The list of ARM Ids of Action Groups that will be triggered on every Alert fired through this event subscription.
  /// Each resource ARM Id should follow this pattern: /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Insights/actionGroups/{ActionGroupName}.
  final pulumi.Input<List<String>>? actionGroups;
  /// The description that will be attached to every Alert fired through this event subscription.
  final pulumi.Input<String>? description;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'MonitorAlert'.
  final pulumi.Input<String> endpointType;
  /// The severity that will be attached to every Alert fired through this event subscription.
  /// This field must be provided.
  final pulumi.Input<String>? severity;

  /// Creates a new [MonitorAlertEventSubscriptionDestination].
  /// [actionGroups] The list of ARM Ids of Action Groups that will be triggered on every Alert fired through this event subscription.
  /// [description] The description that will be attached to every Alert fired through this event subscription.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [severity] The severity that will be attached to every Alert fired through this event subscription.
  MonitorAlertEventSubscriptionDestination({
    this.actionGroups,
    this.description,
    required this.endpointType,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'description': ?description,
      'endpointType': endpointType,
      'severity': ?severity,
    };
  }

  factory MonitorAlertEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return MonitorAlertEventSubscriptionDestination(
      actionGroups: map['actionGroups'] == null ? null : ((map['actionGroups']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity']! as String).input(),
    );
  }
}

