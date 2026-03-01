// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupAutomationRunbookReceiver {
  /// The automation account ID which holds this runbook and authenticates to Azure resources.
  final String automationAccountId;
  /// Indicates whether this instance is global runbook.
  final bool isGlobalRunbook;
  /// The name of the automation runbook receiver.
  final String name;
  /// The name for this runbook.
  final String runbookName;
  /// The URI where webhooks should be sent.
  final String serviceUri;
  /// Enables or disables the common alert schema.
  final bool? useCommonAlertSchema;
  /// The resource id for webhook linked to this runbook.
  final String webhookResourceId;

  /// Creates a new [ActionGroupAutomationRunbookReceiver].
  /// [automationAccountId] The automation account ID which holds this runbook and authenticates to Azure resources.
  /// [isGlobalRunbook] Indicates whether this instance is global runbook.
  /// [name] The name of the automation runbook receiver.
  /// [runbookName] The name for this runbook.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  /// [webhookResourceId] The resource id for webhook linked to this runbook.
  ActionGroupAutomationRunbookReceiver({
    required this.automationAccountId,
    required this.isGlobalRunbook,
    required this.name,
    required this.runbookName,
    required this.serviceUri,
    this.useCommonAlertSchema,
    required this.webhookResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'isGlobalRunbook': isGlobalRunbook,
      'name': name,
      'runbookName': runbookName,
      'serviceUri': serviceUri,
      'useCommonAlertSchema': ?useCommonAlertSchema,
      'webhookResourceId': webhookResourceId,
    };
  }

  factory ActionGroupAutomationRunbookReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupAutomationRunbookReceiver(
      automationAccountId: map['automationAccountId'] as String,
      isGlobalRunbook: map['isGlobalRunbook'] as bool,
      name: map['name'] as String,
      runbookName: map['runbookName'] as String,
      serviceUri: map['serviceUri'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
      webhookResourceId: map['webhookResourceId'] as String,
    );
  }
}

