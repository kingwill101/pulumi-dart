// ignore_for_file: unused_element, unnecessary_cast

import 'client_secret_credentials_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';

/// AzureSourceDetails message describes a specific source details for the Azure source type.
class AzureSourceDetailsResponseVmmigrationV1alpha1 {
  /// Immutable. The Azure location (region) that the source VMs will be migrated from.
  final String azureLocation;

  /// Azure Credentials using tenant ID, client ID and secret.
  final ClientSecretCredentialsResponseVmmigrationV1alpha1 clientSecretCreds;

  /// Provides details on the state of the Source in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;

  /// User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  final Map<String, String> migrationResourcesUserTags;

  /// The ID of the Azure resource group that contains all resources related to the migration process of this source.
  final String resourceGroupId;

  /// State of the source as determined by the health check.
  final String state;

  /// Immutable. Azure subscription ID.
  final String subscriptionId;

  AzureSourceDetailsResponseVmmigrationV1alpha1({
    required this.azureLocation,
    required this.clientSecretCreds,
    required this.error,
    required this.migrationResourcesUserTags,
    required this.resourceGroupId,
    required this.state,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['azureLocation'] = azureLocation;
    map['clientSecretCreds'] = clientSecretCreds.toMap();
    map['error'] = error.toMap();
    map['migrationResourcesUserTags'] = migrationResourcesUserTags;
    map['resourceGroupId'] = resourceGroupId;
    map['state'] = state;
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory AzureSourceDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AzureSourceDetailsResponseVmmigrationV1alpha1(
      azureLocation: map['azureLocation'] as String,
      clientSecretCreds:
          ClientSecretCredentialsResponseVmmigrationV1alpha1.fromMap(
              (map['clientSecretCreds'] as Map).cast<String, dynamic>()),
      error: StatusResponseVmmigrationV1alpha1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      migrationResourcesUserTags:
          (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
      resourceGroupId: map['resourceGroupId'] as String,
      state: map['state'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}
