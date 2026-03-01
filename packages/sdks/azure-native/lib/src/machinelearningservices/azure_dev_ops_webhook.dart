// ignore_for_file: unused_element, unnecessary_cast


/// Webhook details specific for Azure DevOps
class AzureDevOpsWebhook {
  /// Send callback on a specified notification event
  final String? eventType;
  /// Enum to determine the webhook callback service type.
  /// Expected value is 'AzureDevOps'.
  final String webhookType;

  /// Creates a new [AzureDevOpsWebhook].
  /// [eventType] Send callback on a specified notification event
  /// [webhookType] Enum to determine the webhook callback service type.
  AzureDevOpsWebhook({
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
      eventType: map['eventType'] == null ? null : map['eventType'] as String,
      webhookType: map['webhookType'] as String,
    );
  }
}

