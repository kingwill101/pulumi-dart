// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Namespace Topic destination for an event subscription.
class NamespaceTopicEventSubscriptionDestination {
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'NamespaceTopic'.
  final pulumi.Input<String> endpointType;
  /// The Azure resource Id that represents the endpoint of the Event Grid Namespace Topic destination of an event subscription.
  /// This field is required and the Namespace Topic resource listed must already exist.
  /// The resource ARM Id should follow this pattern: /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.EventGrid/namespaces/{NamespaceName}/topics/{TopicName}.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [NamespaceTopicEventSubscriptionDestination].
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure resource Id that represents the endpoint of the Event Grid Namespace Topic destination of an event subscription.
  NamespaceTopicEventSubscriptionDestination({
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory NamespaceTopicEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicEventSubscriptionDestination(
      endpointType: (map['endpointType'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

