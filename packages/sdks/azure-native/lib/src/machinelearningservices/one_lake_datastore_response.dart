// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_credentials_response.dart';
import 'lake_house_artifact_response.dart';

/// OneLake (Trident) datastore configuration.
class OneLakeDatastoreResponse {
  /// [Required] OneLake artifact backing the datastore.
  final pulumi.Input<LakeHouseArtifactResponse> artifact;

  /// [Required] Account credentials.
  final pulumi.Input<AccountKeyDatastoreCredentialsResponse> credentials;

  /// Enum to determine the datastore contents type.
  /// Expected value is 'OneLake'.
  final pulumi.Input<String> datastoreType;

  /// The asset description text.
  final pulumi.Input<String>? description;

  /// OneLake endpoint to use for the datastore.
  final pulumi.Input<String>? endpoint;

  /// Readonly property to indicate if datastore is the workspace default datastore
  final pulumi.Input<bool> isDefault;

  /// [Required] OneLake workspace name.
  final pulumi.Input<String> oneLakeWorkspaceName;

  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;

  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<String>? serviceDataAccessAuthIdentity;

  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OneLakeDatastoreResponse].
  /// [artifact] [Required] OneLake artifact backing the datastore.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] OneLake endpoint to use for the datastore.
  /// [isDefault] Readonly property to indicate if datastore is the workspace default datastore
  /// [oneLakeWorkspaceName] [Required] OneLake workspace name.
  /// [properties] The asset property dictionary.
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  OneLakeDatastoreResponse({
    required this.artifact,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
    required this.isDefault,
    required this.oneLakeWorkspaceName,
    this.properties,
    this.serviceDataAccessAuthIdentity,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact':
          pulumi.Input.mapInputValue<
            LakeHouseArtifactResponse,
            Map<String, dynamic>
          >(artifact, (value) => value.toMap()),
      'credentials':
          pulumi.Input.mapInputValue<
            AccountKeyDatastoreCredentialsResponse,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'datastoreType': datastoreType,
      'description': ?description,
      'endpoint': ?endpoint,
      'isDefault': isDefault,
      'oneLakeWorkspaceName': oneLakeWorkspaceName,
      'properties': ?properties,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'tags': ?tags,
    };
  }

  factory OneLakeDatastoreResponse.fromMap(Map<String, dynamic> map) {
    return OneLakeDatastoreResponse(
      artifact: pulumi.Input.fromValue(
        LakeHouseArtifactResponse.fromMap(
          (map['artifact']! as Map).cast<String, dynamic>(),
        ),
      ),
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
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      oneLakeWorkspaceName: pulumi.Input.fromValue(
        map['oneLakeWorkspaceName'] as String,
      ),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serviceDataAccessAuthIdentity: (() {
        final guardedValue = map['serviceDataAccessAuthIdentity'];
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
