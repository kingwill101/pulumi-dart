// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupEventHubReceiver {
  /// The name of the specific Event Hub queue.
  final String eventHubName;
  /// The namespace name of the Event Hub.
  final String eventHubNamespace;
  /// The name of the EventHub Receiver, must be unique within action group.
  final String name;
  /// The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  final String? subscriptionId;
  /// The Tenant ID for the subscription containing this Event Hub.
  final String? tenantId;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [ActionGroupEventHubReceiver].
  /// [eventHubName] The name of the specific Event Hub queue.
  /// [eventHubNamespace] The namespace name of the Event Hub.
  /// [name] The name of the EventHub Receiver, must be unique within action group.
  /// [subscriptionId] The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  ActionGroupEventHubReceiver({
    required this.eventHubName,
    required this.eventHubNamespace,
    required this.name,
    this.subscriptionId,
    this.tenantId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'eventHubNamespace': eventHubNamespace,
      'name': name,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupEventHubReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupEventHubReceiver(
      eventHubName: map['eventHubName'] as String,
      eventHubNamespace: map['eventHubNamespace'] as String,
      name: map['name'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

