// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials_response.dart';

/// Azure Data Lake Gen2 datastore configuration.
class AzureDataLakeGen2DatastoreResponse {
  /// [Required] Storage account name.
  final String accountName;
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentialsResponse credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureDataLakeGen2'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// Azure cloud endpoint for the storage account.
  final String? endpoint;
  /// [Required] The name of the Data Lake Gen2 filesystem.
  final String filesystem;
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

  /// Creates a new [AzureDataLakeGen2DatastoreResponse].
  /// [accountName] [Required] Storage account name.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] Azure cloud endpoint for the storage account.
  /// [filesystem] [Required] The name of the Data Lake Gen2 filesystem.
  /// [isDefault] Readonly property to indicate if datastore is the workspace default datastore
  /// [properties] The asset property dictionary.
  /// [protocol] Protocol used to communicate with the storage account.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureDataLakeGen2DatastoreResponse({
    required this.accountName,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
    required this.filesystem,
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
      'accountName': accountName,
      'credentials': credentials.toMap(),
      'datastoreType': datastoreType,
      'description': ?description,
      'endpoint': ?endpoint,
      'filesystem': filesystem,
      'isDefault': isDefault,
      'properties': ?properties,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureDataLakeGen2DatastoreResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeGen2DatastoreResponse(
      accountName: map['accountName'] as String,
      credentials: AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      filesystem: map['filesystem'] as String,
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

