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
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? expiryTime,
    pulumi.Output<bool>? isEnabled,
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runOn,
    pulumi.Output<RunbookAssociationProperty>? runbook,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? webhookName,
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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      expiryTime: map['expiryTime'] == null ? null : pulumi.Output.create<String>(map['expiryTime'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runOn: map['runOn'] == null ? null : pulumi.Output.create<String>(map['runOn'] as String),
      runbook: map['runbook'] == null ? null : pulumi.Output.create<RunbookAssociationProperty>(RunbookAssociationProperty.fromMap((map['runbook'] as Map).cast<String, dynamic>())),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      webhookName: map['webhookName'] == null ? null : pulumi.Output.create<String>(map['webhookName'] as String),
    );
  }
}

