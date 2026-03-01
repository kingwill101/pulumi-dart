// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebhook.
class GetWebhookResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// content type
  final String? contentType;
  /// webhook deliveryStatus
  final String deliveryStatus;
  /// whether to enable ssl verification
  final String? enableSslVerification;
  /// under which event notification should be sent.
  final List<String>? events;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// webhook payload url
  final String? payloadUrl;
  /// Azure Resource Provisioning State
  final String provisioningState;
  /// whether to send notification under any event.
  final String? sendAllEvents;
  /// Webhook status.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tenant id.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// whether to update webhookKey.
  final String? updateWebhookKey;
  /// Webhook id in database.
  final String webhookId;
  /// webhook secret token. If not set, this field value is null; otherwise, please set a string value.
  final String? webhookKey;
  /// whether webhookKey is enabled.
  final String webhookKeyEnabled;

  /// Creates a new [GetWebhookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentType] content type
  /// [deliveryStatus] webhook deliveryStatus
  /// [enableSslVerification] whether to enable ssl verification
  /// [events] under which event notification should be sent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [payloadUrl] webhook payload url
  /// [provisioningState] Azure Resource Provisioning State
  /// [sendAllEvents] whether to send notification under any event.
  /// [status] Webhook status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] Tenant id.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateWebhookKey] whether to update webhookKey.
  /// [webhookId] Webhook id in database.
  /// [webhookKey] webhook secret token. If not set, this field value is null; otherwise, please set a string value.
  /// [webhookKeyEnabled] whether webhookKey is enabled.
  GetWebhookResult({
    required this.azureApiVersion,
    this.contentType,
    required this.deliveryStatus,
    this.enableSslVerification,
    this.events,
    required this.id,
    required this.name,
    this.payloadUrl,
    required this.provisioningState,
    this.sendAllEvents,
    this.status,
    required this.systemData,
    required this.tenantId,
    required this.type,
    this.updateWebhookKey,
    required this.webhookId,
    this.webhookKey,
    required this.webhookKeyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentType': ?contentType,
      'deliveryStatus': deliveryStatus,
      'enableSslVerification': ?enableSslVerification,
      'events': ?events,
      'id': id,
      'name': name,
      'payloadUrl': ?payloadUrl,
      'provisioningState': provisioningState,
      'sendAllEvents': ?sendAllEvents,
      'status': ?status,
      'systemData': systemData.toMap(),
      'tenantId': tenantId,
      'type': type,
      'updateWebhookKey': ?updateWebhookKey,
      'webhookId': webhookId,
      'webhookKey': ?webhookKey,
      'webhookKeyEnabled': webhookKeyEnabled,
    };
  }

  factory GetWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetWebhookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      deliveryStatus: map['deliveryStatus'] as String,
      enableSslVerification: map['enableSslVerification'] == null ? null : map['enableSslVerification'] as String,
      events: map['events'] == null ? null : (map['events'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      payloadUrl: map['payloadUrl'] == null ? null : map['payloadUrl'] as String,
      provisioningState: map['provisioningState'] as String,
      sendAllEvents: map['sendAllEvents'] == null ? null : map['sendAllEvents'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      updateWebhookKey: map['updateWebhookKey'] == null ? null : map['updateWebhookKey'] as String,
      webhookId: map['webhookId'] as String,
      webhookKey: map['webhookKey'] == null ? null : map['webhookKey'] as String,
      webhookKeyEnabled: map['webhookKeyEnabled'] as String,
    );
  }
}

