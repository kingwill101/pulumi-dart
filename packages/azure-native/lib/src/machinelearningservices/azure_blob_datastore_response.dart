// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials_response.dart';

/// Azure Blob datastore configuration.
class AzureBlobDatastoreResponse {
  /// Storage account name.
  final String? accountName;
  /// Storage account container name.
  final String? containerName;
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentialsResponse credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureBlob'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// Azure cloud endpoint for the storage account.
  final String? endpoint;
  /// Readonly property to indicate if datastore is the workspace default datastore
  final bool isDefault;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Protocol used to communicate with the storage account.
  final String? protocol;
  /// Azure Resource Group name
  final String? resourceGroup;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// Azure Subscription Id
  final String? subscriptionId;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [AzureBlobDatastoreResponse].
  /// [accountName] Storage account name.
  /// [containerName] Storage account container name.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] Azure cloud endpoint for the storage account.
  /// [isDefault] Readonly property to indicate if datastore is the workspace default datastore
  /// [properties] The asset property dictionary.
  /// [protocol] Protocol used to communicate with the storage account.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureBlobDatastoreResponse({
    this.accountName,
    this.containerName,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
    required this.isDefault,
    this.properties,
    this.protocol,
    this.resourceGroup,
    this.serviceDataAccessAuthIdentity,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'containerName': ?containerName,
      'credentials': credentials.toMap(),
      'datastoreType': datastoreType,
      'description': ?description,
      'endpoint': ?endpoint,
      'isDefault': isDefault,
      'properties': ?properties,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureBlobDatastoreResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobDatastoreResponse(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      credentials: AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      isDefault: map['isDefault'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

