// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_house_artifact.dart';

/// OneLake (Trident) datastore configuration.
class OneLakeDatastore {
  /// [Required] OneLake artifact backing the datastore.
  final pulumi.Input<LakeHouseArtifact> artifact;
  /// [Required] Account credentials.
  final pulumi.Input<dynamic> credentials;
  /// Enum to determine the datastore contents type.
  /// Expected value is 'OneLake'.
  final pulumi.Input<String> datastoreType;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// OneLake endpoint to use for the datastore.
  final pulumi.Input<String?>? endpoint;
  /// [Required] OneLake workspace name.
  final pulumi.Input<String> oneLakeWorkspaceName;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final pulumi.Input<dynamic>? serviceDataAccessAuthIdentity;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

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
    pulumi.Input<dynamic>? serviceDataAccessAuthIdentity,
    this.tags,
  }) : serviceDataAccessAuthIdentity = serviceDataAccessAuthIdentity ?? pulumi.Input.fromValue('None');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact': pulumi.Input.mapInputValue<LakeHouseArtifact, Map<String, dynamic>>(artifact, (value) => value.toMap()),
      'credentials': credentials,
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
      artifact: pulumi.Input.fromValue(LakeHouseArtifact.fromMap((map['artifact']! as Map).cast<String, dynamic>())),
      credentials: pulumi.Input.fromValue(map['credentials']),
      datastoreType: pulumi.Input.fromValue(map['datastoreType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oneLakeWorkspaceName: pulumi.Input.fromValue(map['oneLakeWorkspaceName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceDataAccessAuthIdentity: (() { final guardedValue = map['serviceDataAccessAuthIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
