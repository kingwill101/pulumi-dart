// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_credentials_response.dart';

/// Azure Data Lake Gen1 datastore configuration.
class AzureDataLakeGen1DatastoreResponse {
  /// [Required] Account credentials.
  final pulumi.Input<AccountKeyDatastoreCredentialsResponse> credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureDataLakeGen1'.
  final pulumi.Input<String> datastoreType;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Readonly property to indicate if datastore is the workspace default datastore
  final pulumi.Input<bool> isDefault;
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
      'credentials': pulumi.Input.mapInputValue<AccountKeyDatastoreCredentialsResponse, Map<String, dynamic>>(credentials, (value) => value.toMap()),
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
      credentials: (AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      datastoreType: (map['datastoreType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isDefault: (map['isDefault'] as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : (map['serviceDataAccessAuthIdentity']! as String).input(),
      storeName: (map['storeName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

