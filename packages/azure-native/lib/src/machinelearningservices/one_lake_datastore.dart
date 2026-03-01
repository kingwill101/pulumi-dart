// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_credentials.dart';
import 'lake_house_artifact.dart';

/// OneLake (Trident) datastore configuration.
class OneLakeDatastore {
  /// [Required] OneLake artifact backing the datastore.
  final LakeHouseArtifact artifact;
  /// [Required] Account credentials.
  final AccountKeyDatastoreCredentials credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'OneLake'.
  final String datastoreType;
  /// The asset description text.
  final String? description;
  /// OneLake endpoint to use for the datastore.
  final String? endpoint;
  /// [Required] OneLake workspace name.
  final String oneLakeWorkspaceName;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [OneLakeDatastore].
  /// [artifact] [Required] OneLake artifact backing the datastore.
  /// [credentials] [Required] Account credentials.
  /// [datastoreType] Enum to determine the datastore contents type.
  /// [description] The asset description text.
  /// [endpoint] OneLake endpoint to use for the datastore.
  /// [oneLakeWorkspaceName] [Required] OneLake workspace name.
  /// [properties] The asset property dictionary.
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  OneLakeDatastore({
    required this.artifact,
    required this.credentials,
    required this.datastoreType,
    this.description,
    this.endpoint,
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
      'oneLakeWorkspaceName': oneLakeWorkspaceName,
      'properties': ?properties,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'tags': ?tags,
    };
  }

  factory OneLakeDatastore.fromMap(Map<String, dynamic> map) {
    return OneLakeDatastore(
      artifact: LakeHouseArtifact.fromMap((map['artifact'] as Map).cast<String, dynamic>()),
      credentials: AccountKeyDatastoreCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      datastoreType: map['datastoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      oneLakeWorkspaceName: map['oneLakeWorkspaceName'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

