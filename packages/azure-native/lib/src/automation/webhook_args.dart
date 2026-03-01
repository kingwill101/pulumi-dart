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
    required String automationAccountName,
    String? expiryTime,
    bool? isEnabled,
    required String name,
    Map<String, String>? parameters,
    required String resourceGroupName,
    String? runOn,
    RunbookAssociationProperty? runbook,
    String? uri,
    String? webhookName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      name = pulumi.Input.asInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runOn = pulumi.Input.asOptionalInput<String>(runOn),
      runbook = pulumi.Input.asOptionalInput<RunbookAssociationProperty>(runbook),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      webhookName = pulumi.Input.asOptionalInput<String>(webhookName);

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
      automationAccountName: map['automationAccountName'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      runOn: map['runOn'] == null ? null : map['runOn'] as String,
      runbook: map['runbook'] == null ? null : RunbookAssociationProperty.fromMap((map['runbook'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
      webhookName: map['webhookName'] == null ? null : map['webhookName'] as String,
    );
  }
}

