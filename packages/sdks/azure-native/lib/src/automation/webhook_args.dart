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
      'runbook':
          ?pulumi.Input.mapOptionalInputValue<
            RunbookAssociationProperty,
            Map<String, dynamic>
          >(runbook, (value) => value.toMap()),
      'uri': ?uri,
      'webhookName': ?webhookName,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      expiryTime: (() {
        final guardedValue = map['expiryTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isEnabled: (() {
        final guardedValue = map['isEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      runOn: (() {
        final guardedValue = map['runOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runbook: (() {
        final guardedValue = map['runbook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RunbookAssociationProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhookName: (() {
        final guardedValue = map['webhookName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
