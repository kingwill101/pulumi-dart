// ignore_for_file: unused_element, unnecessary_cast

class GetTopicIngestionDataSourceSettingAzureEventHub {
  /// The Azure event hub client ID to use for ingestion.
  final String clientId;

  /// The Azure event hub to ingest data from.
  final String eventHub;

  /// The GCP service account to be used for Federated Identity authentication
  /// with Azure (via a 'AssumeRoleWithWebIdentity' call for the provided
  /// role).
  final String gcpServiceAccount;

  /// The Azure event hub namespace to ingest data from.
  final String namespace;

  /// The name of the resource group within an Azure subscription.
  final String resourceGroup;

  /// The Azure event hub subscription ID to use for ingestion.
  final String subscriptionId;

  /// The Azure event hub tenant ID to use for ingestion.
  final String tenantId;

  GetTopicIngestionDataSourceSettingAzureEventHub({
    required this.clientId,
    required this.eventHub,
    required this.gcpServiceAccount,
    required this.namespace,
    required this.resourceGroup,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['eventHub'] = eventHub;
    map['gcpServiceAccount'] = gcpServiceAccount;
    map['namespace'] = namespace;
    map['resourceGroup'] = resourceGroup;
    map['subscriptionId'] = subscriptionId;
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetTopicIngestionDataSourceSettingAzureEventHub.fromMap(
      Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingAzureEventHub(
      clientId: map['clientId'] as String,
      eventHub: map['eventHub'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] as String,
      namespace: map['namespace'] as String,
      resourceGroup: map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
