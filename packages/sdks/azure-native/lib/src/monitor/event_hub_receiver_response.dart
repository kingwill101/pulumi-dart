// ignore_for_file: unused_element, unnecessary_cast


/// An Event hub receiver.
class EventHubReceiverResponse {
  /// The name of the specific Event Hub queue
  final String eventHubName;
  /// The Event Hub namespace
  final String eventHubNameSpace;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final String? managedIdentity;
  /// The name of the Event hub receiver. Names must be unique across all receivers within an action group.
  final String name;
  /// The Id for the subscription containing this event hub
  final String subscriptionId;
  /// The tenant Id for the subscription containing this event hub
  final String? tenantId;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [EventHubReceiverResponse].
  /// [eventHubName] The name of the specific Event Hub queue
  /// [eventHubNameSpace] The Event Hub namespace
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the Event hub receiver. Names must be unique across all receivers within an action group.
  /// [subscriptionId] The Id for the subscription containing this event hub
  /// [tenantId] The tenant Id for the subscription containing this event hub
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  EventHubReceiverResponse({
    required this.eventHubName,
    required this.eventHubNameSpace,
    this.managedIdentity,
    required this.name,
    required this.subscriptionId,
    this.tenantId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'eventHubNameSpace': eventHubNameSpace,
      'managedIdentity': ?managedIdentity,
      'name': name,
      'subscriptionId': subscriptionId,
      'tenantId': ?tenantId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory EventHubReceiverResponse.fromMap(Map<String, dynamic> map) {
    return EventHubReceiverResponse(
      eventHubName: map['eventHubName'] as String,
      eventHubNameSpace: map['eventHubNameSpace'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : map['managedIdentity'] as String,
      name: map['name'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

