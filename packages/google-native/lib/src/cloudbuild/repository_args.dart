// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v2_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v2_repository_args_doc}
class RepositoryArgs {
  /// Allows clients to store small amounts of arbitrary data.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> connectionId;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;

  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Git Clone HTTPS URI.
  final pulumi.Input<String> remoteUri;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [RepositoryArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [connectionId] Required.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] Optional.
  /// [name] Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  /// [project] Optional.
  /// [remoteUri] Git Clone HTTPS URI.
  /// [repositoryId] Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  RepositoryArgs({
    Map<String, String>? annotations,
    required String connectionId,
    String? etag,
    String? location,
    String? name,
    String? project,
    required String remoteUri,
    required String repositoryId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       connectionId = pulumi.Input.asInput<String>(connectionId),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       remoteUri = pulumi.Input.asInput<String>(remoteUri),
       repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectionId': connectionId,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'remoteUri': remoteUri,
      'repositoryId': repositoryId,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      connectionId: map['connectionId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      remoteUri: map['remoteUri'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
