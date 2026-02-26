// ignore_for_file: unused_element, unnecessary_cast

class TopicIngestionDataSourceSettingsAzureEventHubs {
  /// The Azure event hub client ID to use for ingestion.
  final String? clientId;

  /// The Azure event hub to ingest data from.
  final String? eventHub;

  /// The GCP service account to be used for Federated Identity authentication
  /// with Azure (via a `AssumeRoleWithWebIdentity` call for the provided
  /// role).
  final String? gcpServiceAccount;

  /// The Azure event hub namespace to ingest data from.
  final String? namespace;

  /// The name of the resource group within an Azure subscription.
  final String? resourceGroup;

  /// The Azure event hub subscription ID to use for ingestion.
  final String? subscriptionId;

  /// The Azure event hub tenant ID to use for ingestion.
  final String? tenantId;

  TopicIngestionDataSourceSettingsAzureEventHubs({
    this.clientId,
    this.eventHub,
    this.gcpServiceAccount,
    this.namespace,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final eventHubValue = eventHub;
    if (eventHubValue != null) {
      map['eventHub'] = eventHubValue;
    }
    final gcpServiceAccountValue = gcpServiceAccount;
    if (gcpServiceAccountValue != null) {
      map['gcpServiceAccount'] = gcpServiceAccountValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final resourceGroupValue = resourceGroup;
    if (resourceGroupValue != null) {
      map['resourceGroup'] = resourceGroupValue;
    }
    final subscriptionIdValue = subscriptionId;
    if (subscriptionIdValue != null) {
      map['subscriptionId'] = subscriptionIdValue;
    }
    final tenantIdValue = tenantId;
    if (tenantIdValue != null) {
      map['tenantId'] = tenantIdValue;
    }
    return map;
  }

  factory TopicIngestionDataSourceSettingsAzureEventHubs.fromMap(
      Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsAzureEventHubs(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      eventHub: map['eventHub'] == null ? null : map['eventHub'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] == null
          ? null
          : map['gcpServiceAccount'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      resourceGroup:
          map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] == null
          ? null
          : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}
