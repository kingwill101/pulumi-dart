// ignore_for_file: unused_element, unnecessary_cast

import 'client_secret_credentials2.dart';

/// AzureSourceDetails message describes a specific source details for the Azure source type.
class AzureSourceDetails2 {
  /// Immutable. The Azure location (region) that the source VMs will be migrated from.
  final String? azureLocation;

  /// Azure Credentials using tenant ID, client ID and secret.
  final ClientSecretCredentials2? clientSecretCreds;

  /// User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  final Map<String, String>? migrationResourcesUserTags;

  /// Immutable. Azure subscription ID.
  final String? subscriptionId;

  AzureSourceDetails2({
    this.azureLocation,
    this.clientSecretCreds,
    this.migrationResourcesUserTags,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final azureLocationValue = azureLocation;
    if (azureLocationValue != null) {
      map['azureLocation'] = azureLocationValue;
    }
    final clientSecretCredsValue = clientSecretCreds;
    if (clientSecretCredsValue != null) {
      map['clientSecretCreds'] = clientSecretCredsValue.toMap();
    }
    final migrationResourcesUserTagsValue = migrationResourcesUserTags;
    if (migrationResourcesUserTagsValue != null) {
      map['migrationResourcesUserTags'] = migrationResourcesUserTagsValue;
    }
    final subscriptionIdValue = subscriptionId;
    if (subscriptionIdValue != null) {
      map['subscriptionId'] = subscriptionIdValue;
    }
    return map;
  }

  factory AzureSourceDetails2.fromMap(Map<String, dynamic> map) {
    return AzureSourceDetails2(
      azureLocation:
          map['azureLocation'] == null ? null : map['azureLocation'] as String,
      clientSecretCreds: map['clientSecretCreds'] == null
          ? null
          : ClientSecretCredentials2.fromMap(
              (map['clientSecretCreds'] as Map).cast<String, dynamic>()),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null
          ? null
          : (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
      subscriptionId: map['subscriptionId'] == null
          ? null
          : map['subscriptionId'] as String,
    );
  }
}
