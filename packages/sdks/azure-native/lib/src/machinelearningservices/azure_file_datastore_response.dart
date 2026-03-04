// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_credentials_response.dart';

/// Azure File datastore configuration.
class AzureFileDatastoreResponse {
  /// [Required] Storage account name.
  final pulumi.Input<String> accountName;

  /// [Required] Account credentials.
  final pulumi.Input<AccountKeyDatastoreCredentialsResponse> credentials;

  /// Enum to determine the datastore contents type.
  /// Expected value is 'AzureFile'.
  final pulumi.Input<String> datastoreType;

  /// The asset description text.
  final pulumi.Input<String>? description;

  /// Azure cloud endpoint for the storage account.
  final pulumi.Input<String>? endpoint;

  /// [Required] The name of the Azure file share that the datastore points to.
  final pulumi.Input<String> fileShareName;

  /// Readonly property to indicate if datastore is the workspace default datastore
  final pulumi.Input<bool> isDefault;

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

  /// Creates a new [AzureFileDatastoreResponse].
  /// [accountName] [Required] Storage account name.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] Azure cloud endpoint for the storage account.
  /// [fileShareName] [Required] The name of the Azure file share that the datastore points to.
  /// [isDefault] Readonly property to indicate if datastore is the workspace default datastore
  /// [properties] The asset property dictionary.
  /// [protocol] Protocol used to communicate with the storage account.
  /// [resourceGroup] Azure Resource Group name
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [subscriptionId] Azure Subscription Id
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  AzureFileDatastoreResponse({
    required this.accountName,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
    required this.fileShareName,
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
      'credentials':
          pulumi.Input.mapInputValue<
            AccountKeyDatastoreCredentialsResponse,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'datastoreType': datastoreType,
      'description': ?description,
      'endpoint': ?endpoint,
      'fileShareName': fileShareName,
      'isDefault': isDefault,
      'properties': ?properties,
      'protocol': ?protocol,
      'resourceGroup': ?resourceGroup,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory AzureFileDatastoreResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileDatastoreResponse(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
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
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileShareName: pulumi.Input.fromValue(map['fileShareName'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
