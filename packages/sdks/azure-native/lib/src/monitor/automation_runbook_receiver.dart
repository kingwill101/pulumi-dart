// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Automation Runbook notification receiver.
class AutomationRunbookReceiver {
  /// The Azure automation account Id which holds this runbook and authenticate to Azure resource.
  final pulumi.Input<String> automationAccountId;
  /// Indicates whether this instance is global runbook.
  final pulumi.Input<bool> isGlobalRunbook;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final pulumi.Input<String>? managedIdentity;
  /// Indicates name of the webhook.
  final pulumi.Input<String>? name;
  /// The name for this runbook.
  final pulumi.Input<String> runbookName;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String>? serviceUri;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final pulumi.Input<String> webhookResourceId;

  /// Creates a new [AutomationRunbookReceiver].
  /// [automationAccountId] The Azure automation account Id which holds this runbook and authenticate to Azure resource.
  /// [isGlobalRunbook] Indicates whether this instance is global runbook.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] Indicates name of the webhook.
  /// [runbookName] The name for this runbook.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  /// [webhookResourceId] The resource id for webhook linked to this runbook.
  const AutomationRunbookReceiver({
    required this.automationAccountId,
    required this.isGlobalRunbook,
    this.managedIdentity,
    this.name,
    required this.runbookName,
    this.serviceUri,
    this.useCommonAlertSchema,
    required this.webhookResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'isGlobalRunbook': isGlobalRunbook,
      'managedIdentity': ?managedIdentity,
      'name': ?name,
      'runbookName': runbookName,
      'serviceUri': ?serviceUri,
      'useCommonAlertSchema': ?useCommonAlertSchema,
      'webhookResourceId': webhookResourceId,
    };
  }

  factory AutomationRunbookReceiver.fromMap(Map<String, dynamic> map) {
    return AutomationRunbookReceiver(
      automationAccountId: pulumi.Input.fromValue(map['automationAccountId'] as String),
      isGlobalRunbook: pulumi.Input.fromValue(map['isGlobalRunbook'] as bool),
      managedIdentity: (() { final guardedValue = map['managedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookName: pulumi.Input.fromValue(map['runbookName'] as String),
      serviceUri: (() { final guardedValue = map['serviceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webhookResourceId: pulumi.Input.fromValue(map['webhookResourceId'] as String),
    );
  }
}

