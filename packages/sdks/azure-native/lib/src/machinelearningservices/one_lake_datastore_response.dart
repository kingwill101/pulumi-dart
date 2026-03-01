// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials_response.dart';
import 'lake_house_artifact_response.dart';

/// OneLake (Trident) datastore configuration.
class OneLakeDatastoreResponse {
  /// [Required] OneLake artifact backing the datastore.
  final LakeHouseArtifactResponse artifact;
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentialsResponse credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'OneLake'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// OneLake endpoint to use for the datastore.
  final String? endpoint;
  /// Readonly property to indicate if datastore is the workspace default datastore
  final bool isDefault;
  /// [Required] OneLake workspace name.
  final String oneLakeWorkspaceName;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

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
      'artifact': artifact.toMap(),
      'credentials': credentials.toMap(),
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
      artifact: LakeHouseArtifactResponse.fromMap((map['artifact'] as Map).cast<String, dynamic>()),
      credentials: AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      isDefault: map['isDefault'] as bool,
      oneLakeWorkspaceName: map['oneLakeWorkspaceName'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

