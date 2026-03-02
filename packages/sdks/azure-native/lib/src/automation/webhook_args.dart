// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_association_property.dart';

/// {@template pulumi_automation_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_automation_webhook_args_doc}
class WebhookArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the expiry time.
  final pulumi.Input<String>? expiryTime;
  /// Gets or sets the value of the enabled flag of webhook.
  final pulumi.Input<bool>? isEnabled;
  /// Gets or sets the name of the webhook.
  final pulumi.Input<String> name;
  /// Gets or sets the parameters of the job.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the name of the hybrid worker group the webhook job will run on.
  final pulumi.Input<String>? runOn;
  /// Gets or sets the runbook.
  final pulumi.Input<RunbookAssociationProperty>? runbook;
  /// Gets or sets the uri.
  final pulumi.Input<String>? uri;
  /// The webhook name.
  final pulumi.Input<String>? webhookName;

  /// Creates a new [WebhookArgs].
  /// [automationAccountName] The name of the automation account.
  /// [expiryTime] Gets or sets the expiry time.
  /// [isEnabled] Gets or sets the value of the enabled flag of webhook.
  /// [name] Gets or sets the name of the webhook.
  /// [parameters] Gets or sets the parameters of the job.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runOn] Gets or sets the name of the hybrid worker group the webhook job will run on.
  /// [runbook] Gets or sets the runbook.
  /// [uri] Gets or sets the uri.
  /// [webhookName] The webhook name.
  WebhookArgs({
    required this.automationAccountName,
    this.expiryTime,
    this.isEnabled,
    required this.name,
    this.parameters,
    required this.resourceGroupName,
    this.runOn,
    this.runbook,
    this.uri,
    this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'expiryTime': ?expiryTime,
      'isEnabled': ?isEnabled,
      'name': name,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'runOn': ?runOn,
      'runbook': ?pulumi.Input.mapOptionalInputValue<RunbookAssociationProperty, Map<String, dynamic>>(runbook, (value) => value.toMap()),
      'uri': ?uri,
      'webhookName': ?webhookName,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime']! as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runOn: map['runOn'] == null ? null : (map['runOn']! as String).input(),
      runbook: map['runbook'] == null ? null : (RunbookAssociationProperty.fromMap((map['runbook']! as Map).cast<String, dynamic>())).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
      webhookName: map['webhookName'] == null ? null : (map['webhookName']! as String).input(),
    );
  }
}

