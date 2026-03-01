// ignore_for_file: unused_element, unnecessary_cast


/// Information about the Monitor Alert destination for an event subscription.
class MonitorAlertEventSubscriptionDestinationResponse {
  /// The list of ARM Ids of Action Groups that will be triggered on every Alert fired through this event subscription.
  /// Each resource ARM Id should follow this pattern: /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Insights/actionGroups/{ActionGroupName}.
  final List<String>? actionGroups;
  /// The description that will be attached to every Alert fired through this event subscription.
  final String? description;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'MonitorAlert'.
  final String endpointType;
  /// The severity that will be attached to every Alert fired through this event subscription.
  /// This field must be provided.
  final String? severity;

  /// Creates a new [MonitorAlertEventSubscriptionDestinationResponse].
  /// [actionGroups] The list of ARM Ids of Action Groups that will be triggered on every Alert fired through this event subscription.
  /// [description] The description that will be attached to every Alert fired through this event subscription.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [severity] The severity that will be attached to every Alert fired through this event subscription.
  MonitorAlertEventSubscriptionDestinationResponse({
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

  factory MonitorAlertEventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return MonitorAlertEventSubscriptionDestinationResponse(
      actionGroups: map['actionGroups'] == null ? null : (map['actionGroups'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      endpointType: map['endpointType'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
    );
  }
}

