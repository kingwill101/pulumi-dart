// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Event hub receiver.
class EventHubReceiverResponse {
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
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      eventHubNameSpace: pulumi.Input.fromValue(map['eventHubNameSpace'] as String),
      managedIdentity: (() { final guardedValue = map['managedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

