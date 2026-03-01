// ignore_for_file: unused_element, unnecessary_cast


/// Information about the Namespace Topic destination for an event subscription.
class NamespaceTopicEventSubscriptionDestinationResponse {
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'NamespaceTopic'.
  final String endpointType;
  /// The Azure resource Id that represents the endpoint of the Event Grid Namespace Topic destination of an event subscription.
  /// This field is required and the Namespace Topic resource listed must already exist.
  /// The resource ARM Id should follow this pattern: /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.EventGrid/namespaces/{NamespaceName}/topics/{TopicName}.
  final String? resourceId;

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
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

