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
      'credentials':
          pulumi.Input.mapInputValue<
            AccountKeyDatastoreCredentialsResponse,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
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
      credentials: pulumi.Input.fromValue(
        AccountKeyDatastoreCredentialsResponse.fromMap(
          (map['credentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      datastoreType: pulumi.Input.fromValue(map['datastoreType'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceGroup: (() {
        final guardedValue = map['resourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDataAccessAuthIdentity: (() {
        final guardedValue = map['serviceDataAccessAuthIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storeName: pulumi.Input.fromValue(map['storeName'] as String),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
