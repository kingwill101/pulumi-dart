// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Repository.
class RepositoryArgs4 {
  /// Allows clients to store small amounts of arbitrary data.
  final Input<Map<String, String>>? annotations;
  final Input<String> connectionId;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;
  final Input<String>? location;

  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  final Input<String>? name;
  final Input<String>? project;

  /// Git Clone HTTPS URI.
  final Input<String> remoteUri;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final Input<String> repositoryId;

  RepositoryArgs4({
    this.annotations,
    required this.connectionId,
    this.etag,
    this.location,
    this.name,
    this.project,
    required this.remoteUri,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['connectionId'] = connectionId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['remoteUri'] = remoteUri;
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory RepositoryArgs4.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs4(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      connectionId: Input.asInput<String>(map['connectionId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteUri: Input.asInput<String>(map['remoteUri']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
