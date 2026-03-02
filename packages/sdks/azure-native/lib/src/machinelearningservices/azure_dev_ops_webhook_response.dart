// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Webhook details specific for Azure DevOps
class AzureDevOpsWebhookResponse {
  /// Send callback on a specified notification event
  final pulumi.Input<String>? eventType;
  /// Enum to determine the webhook callback service type.
  /// Expected value is 'AzureDevOps'.
  final pulumi.Input<String> webhookType;

  /// Creates a new [AzureDevOpsWebhookResponse].
  /// [eventType] Send callback on a specified notification event
  /// [webhookType] Enum to determine the webhook callback service type.
  AzureDevOpsWebhookResponse({
    this.eventType,
    required this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?eventType,
      'webhookType': webhookType,
    };
  }

  factory AzureDevOpsWebhookResponse.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsWebhookResponse(
      eventType: map['eventType'] == null ? null : (map['eventType'] as String).input(),
      webhookType: (map['webhookType'] as String).input(),
    );
  }
}

