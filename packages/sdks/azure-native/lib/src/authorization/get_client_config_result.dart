// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// Azure Client ID (Application Object ID).
  final String clientId;
  /// Azure Object ID of the current user or service principal.
  final String objectId;
  /// Azure Subscription ID
  final String subscriptionId;
  /// Azure Tenant ID
  final String tenantId;

  /// Creates a new [GetClientConfigResult].
  /// [clientId] Azure Client ID (Application Object ID).
  /// [objectId] Azure Object ID of the current user or service principal.
  /// [subscriptionId] Azure Subscription ID
  /// [tenantId] Azure Tenant ID
  const GetClientConfigResult({
    required this.clientId,
    required this.objectId,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'objectId': objectId,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      clientId: map['clientId'] as String,
      objectId: map['objectId'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

