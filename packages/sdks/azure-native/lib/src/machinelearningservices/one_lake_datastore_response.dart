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
      'artifact': pulumi.Input.mapInputValue<LakeHouseArtifactResponse, Map<String, dynamic>>(artifact, (value) => value.toMap()),
      'credentials': pulumi.Input.mapInputValue<AccountKeyDatastoreCredentialsResponse, Map<String, dynamic>>(credentials, (value) => value.toMap()),
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
      artifact: (LakeHouseArtifactResponse.fromMap((map['artifact'] as Map).cast<String, dynamic>())).input(),
      credentials: (AccountKeyDatastoreCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      datastoreType: (map['datastoreType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      isDefault: (map['isDefault'] as bool).input(),
      oneLakeWorkspaceName: (map['oneLakeWorkspaceName'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : (map['serviceDataAccessAuthIdentity'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

