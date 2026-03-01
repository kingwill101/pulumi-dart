// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Allows clients to store small amounts of arbitrary data.
  final Map<String, String> annotations;

  /// Server assigned timestamp for when the connection was created.
  final String createTime;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  final String name;

  /// Git Clone HTTPS URI.
  final String remoteUri;

  /// Server assigned timestamp for when the connection was updated.
  final String updateTime;

  /// External ID of the webhook created for the repository.
  final String webhookId;

  /// Creates a new [GetRepositoryResult].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [createTime] Server assigned timestamp for when the connection was created.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [name] Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  /// [remoteUri] Git Clone HTTPS URI.
  /// [updateTime] Server assigned timestamp for when the connection was updated.
  /// [webhookId] External ID of the webhook created for the repository.
  GetRepositoryResult({
    required this.annotations,
    required this.createTime,
    required this.etag,
    required this.name,
    required this.remoteUri,
    required this.updateTime,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'etag': etag,
      'name': name,
      'remoteUri': remoteUri,
      'updateTime': updateTime,
      'webhookId': webhookId,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      remoteUri: map['remoteUri'] as String,
      updateTime: map['updateTime'] as String,
      webhookId: map['webhookId'] as String,
    );
  }
}
