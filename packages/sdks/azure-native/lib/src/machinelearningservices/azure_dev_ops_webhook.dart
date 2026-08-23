// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Webhook details specific for Azure DevOps
class AzureDevOpsWebhook {
  /// Send callback on a specified notification event
  final pulumi.Input<String>? eventType;
  /// Enum to determine the webhook callback service type.
  /// Expected value is 'AzureDevOps'.
  final pulumi.Input<String> webhookType;

  /// Creates a new [AzureDevOpsWebhook].
  /// [eventType] Send callback on a specified notification event
  /// [webhookType] Enum to determine the webhook callback service type.
  const AzureDevOpsWebhook({
    this.eventType,
    required this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?eventType,
      'webhookType': webhookType,
    };
  }

  factory AzureDevOpsWebhook.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsWebhook(
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookType: pulumi.Input.fromValue(map['webhookType'] as String),
    );
  }
}
