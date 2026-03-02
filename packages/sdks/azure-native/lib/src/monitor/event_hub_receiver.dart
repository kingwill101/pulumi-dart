// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Event hub receiver.
class EventHubReceiver {
  /// The name of the specific Event Hub queue
  final pulumi.Input<String> eventHubName;
  /// The Event Hub namespace
  final pulumi.Input<String> eventHubNameSpace;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final pulumi.Input<String>? managedIdentity;
  /// The name of the Event hub receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;
  /// The Id for the subscription containing this event hub
  final pulumi.Input<String> subscriptionId;
  /// The tenant Id for the subscription containing this event hub
  final pulumi.Input<String>? tenantId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [EventHubReceiver].
  /// [eventHubName] The name of the specific Event Hub queue
  /// [eventHubNameSpace] The Event Hub namespace
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the Event hub receiver. Names must be unique across all receivers within an action group.
  /// [subscriptionId] The Id for the subscription containing this event hub
  /// [tenantId] The tenant Id for the subscription containing this event hub
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  EventHubReceiver({
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

  factory EventHubReceiver.fromMap(Map<String, dynamic> map) {
    return EventHubReceiver(
      eventHubName: (map['eventHubName'] as String).input(),
      eventHubNameSpace: (map['eventHubNameSpace'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (map['managedIdentity']! as String).input(),
      name: (map['name'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
    );
  }
}

