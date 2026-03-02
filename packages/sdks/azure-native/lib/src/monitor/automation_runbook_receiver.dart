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
  AutomationRunbookReceiver({
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
      automationAccountId: (map['automationAccountId'] as String).input(),
      isGlobalRunbook: (map['isGlobalRunbook'] as bool).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (map['managedIdentity']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      runbookName: (map['runbookName'] as String).input(),
      serviceUri: map['serviceUri'] == null ? null : (map['serviceUri']! as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
      webhookResourceId: (map['webhookResourceId'] as String).input(),
    );
  }
}

