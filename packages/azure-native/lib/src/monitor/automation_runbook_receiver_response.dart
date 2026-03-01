// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Automation Runbook notification receiver.
class AutomationRunbookReceiverResponse {
  /// The Azure automation account Id which holds this runbook and authenticate to Azure resource.
  final String automationAccountId;
  /// Indicates whether this instance is global runbook.
  final bool isGlobalRunbook;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final String? managedIdentity;
  /// Indicates name of the webhook.
  final String? name;
  /// The name for this runbook.
  final String runbookName;
  /// The URI where webhooks should be sent.
  final String? serviceUri;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final String webhookResourceId;

  /// Creates a new [AutomationRunbookReceiverResponse].
  /// [automationAccountId] The Azure automation account Id which holds this runbook and authenticate to Azure resource.
  /// [isGlobalRunbook] Indicates whether this instance is global runbook.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] Indicates name of the webhook.
  /// [runbookName] The name for this runbook.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  /// [webhookResourceId] The resource id for webhook linked to this runbook.
  AutomationRunbookReceiverResponse({
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

  factory AutomationRunbookReceiverResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRunbookReceiverResponse(
      automationAccountId: map['automationAccountId'] as String,
      isGlobalRunbook: map['isGlobalRunbook'] as bool,
      managedIdentity: map['managedIdentity'] == null ? null : map['managedIdentity'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      runbookName: map['runbookName'] as String,
      serviceUri: map['serviceUri'] == null ? null : map['serviceUri'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
      webhookResourceId: map['webhookResourceId'] as String,
    );
  }
}

