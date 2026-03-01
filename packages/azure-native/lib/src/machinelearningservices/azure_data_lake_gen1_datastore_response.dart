// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials_response.dart';

/// Azure Data Lake Gen1 datastore configuration.
class AzureDataLakeGen1DatastoreResponse {
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentialsResponse credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureDataLakeGen1'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// Readonly property to indicate if datastore is the workspace default datastore
  final bool isDefault;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Azure Resource Group name
  final String? resourceGroup;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// [Required] Azure Data Lake store name.
  final String storeName;
  /// Azure Subscription Id
  final String? subscriptionId;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [AzureDataLakeGen1DatastoreResponse].
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [isDefault] Readonly property to indicate if datastore is the workspace default datastore
  /// [properties] The asset property dictionary.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [storeName] [Required] Azure Data Lake store name.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureDataLakeGen1DatastoreResponse({
    required this.credentials,
    required this.datastoreType,
    this.description,
    required this.isDefault,
    this.properties,
    this.resourceGroup,
    this.serviceDataAccessAuthIdentity,
    required this.storeName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials.toMap(),
      'datastoreType': datastoreType,
      'description': ?description,
      'isDefault': isDefault,
      'properties': ?properties,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'storeName': storeName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureDataLakeGen1DatastoreResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeGen1DatastoreResponse(
      credentials: AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      isDefault: map['isDefault'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      storeName: map['storeName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

