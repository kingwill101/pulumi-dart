// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials.dart';

/// Azure File datastore configuration.
class AzureFileDatastore {
  /// [Required] Storage account name.
  final String accountName;
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentials credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureFile'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// Azure cloud endpoint for the storage account.
  final String? endpoint;
  /// [Required] The name of the Azure file share that the datastore points to.
  final String fileShareName;
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

  /// Creates a new [AzureFileDatastore].
  /// [accountName] [Required] Storage account name.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] Azure cloud endpoint for the storage account.
  /// [fileShareName] [Required] The name of the Azure file share that the datastore points to.
  /// [properties] The asset property dictionary.
  /// [protocol] Protocol used to communicate with the storage account.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureFileDatastore({
    required this.accountName,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
    required this.fileShareName,
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
      'fileShareName': fileShareName,
      'properties': ?properties,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureFileDatastore.fromMap(Map<String, dynamic> map) {
    return AzureFileDatastore(
      accountName: map['accountName'] as String,
      credentials: AccountKeyDatastoreCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      fileShareName: map['fileShareName'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

