// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_credentials.dart';

/// Azure Data Lake Gen1 datastore configuration.
class AzureDataLakeGen1Datastore {
  /// [Required] Account credentials.
  final pulumi.Input<AccountKeyDatastoreCredentials> credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureDataLakeGen1'.
  final pulumi.Input<String> datastoreType;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Azure Resource Group name
  final pulumi.Input<String>? resourceGroup;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String>? serviceDataAccessAuthIdentity;
  /// [Required] Azure Data Lake store name.
  final pulumi.Input<String> storeName;
  /// Azure Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureDataLakeGen1Datastore].
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [properties] The asset property dictionary.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [storeName] [Required] Azure Data Lake store name.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureDataLakeGen1Datastore({
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.properties,
    this.resourceGroup,
    this.serviceDataAccessAuthIdentity,
    required this.storeName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<AccountKeyDatastoreCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'datastoreType': datastoreType,
      'description': ?description,
      'properties': ?properties,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'storeName': storeName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureDataLakeGen1Datastore.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeGen1Datastore(
      credentials: (AccountKeyDatastoreCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      datastoreType: (map['datastoreType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : (map['serviceDataAccessAuthIdentity'] as String).input(),
      storeName: (map['storeName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

