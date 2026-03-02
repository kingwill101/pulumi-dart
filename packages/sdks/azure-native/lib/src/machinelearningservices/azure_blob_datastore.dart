// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_credentials.dart';

/// Azure Blob datastore configuration.
class AzureBlobDatastore {
  /// Storage account name.
  final pulumi.Input<String>? accountName;
  /// Storage account container name.
  final pulumi.Input<String>? containerName;
  /// [Required] Account credentials.
  final pulumi.Input<AccountKeyDatastoreCredentials> credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureBlob'.
  final pulumi.Input<String> datastoreType;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Azure cloud endpoint for the storage account.
  final pulumi.Input<String>? endpoint;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Protocol used to communicate with the storage account.
  final pulumi.Input<String>? protocol;
  /// Azure Resource Group name
  final pulumi.Input<String>? resourceGroup;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String>? serviceDataAccessAuthIdentity;
  /// Azure Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureBlobDatastore].
  /// [accountName] Storage account name.
  /// [containerName] Storage account container name.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] Azure cloud endpoint for the storage account.
  /// [properties] The asset property dictionary.
  /// [protocol] Protocol used to communicate with the storage account.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureBlobDatastore({
    this.accountName,
    this.containerName,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
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
      'credentials': pulumi.Input.mapInputValue<AccountKeyDatastoreCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'datastoreType': datastoreType,
      'description': ?description,
      'endpoint': ?endpoint,
      'properties': ?properties,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureBlobDatastore.fromMap(Map<String, dynamic> map) {
    return AzureBlobDatastore(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      credentials: (AccountKeyDatastoreCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      datastoreType: (map['datastoreType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : (map['serviceDataAccessAuthIdentity']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

