// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Namespace Topic destination for an event subscription.
class NamespaceTopicEventSubscriptionDestinationResponse {
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'NamespaceTopic'.
  final pulumi.Input<String> endpointType;
  /// The Azure resource Id that represents the endpoint of the Event Grid Namespace Topic destination of an event subscription.
  /// This field is required and the Namespace Topic resource listed must already exist.
  /// The resource ARM Id should follow this pattern: /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.EventGrid/namespaces/{NamespaceName}/topics/{TopicName}.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [NamespaceTopicEventSubscriptionDestinationResponse].
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure resource Id that represents the endpoint of the Event Grid Namespace Topic destination of an event subscription.
  NamespaceTopicEventSubscriptionDestinationResponse({
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory NamespaceTopicEventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicEventSubscriptionDestinationResponse(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

