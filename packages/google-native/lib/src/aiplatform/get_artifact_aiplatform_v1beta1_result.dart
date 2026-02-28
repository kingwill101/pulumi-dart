// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getArtifact.
class GetArtifactAiplatformV1beta1Result {
  /// Timestamp when this Artifact was created.
  final String createTime;

  /// Description of the Artifact
  final String description;

  /// User provided display name of the Artifact. May be up to 128 Unicode characters.
  final String displayName;

  /// An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// The labels with user-defined metadata to organize your Artifacts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Artifact (System labels are excluded).
  final Map<String, String> labels;

  /// Properties of the Artifact. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  final Map<String, String> metadata;

  /// The resource name of the Artifact.
  final String name;

  /// The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String schemaTitle;

  /// The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String schemaVersion;

  /// The state of this Artifact. This is a property of the Artifact, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines), and the system does not prescribe or check the validity of state transitions.
  final String state;

  /// Timestamp when this Artifact was last updated.
  final String updateTime;

  /// The uniform resource identifier of the artifact file. May be empty if there is no actual artifact file.
  final String uri;

  /// Creates a new [GetArtifactAiplatformV1beta1Result].
  /// [createTime] Timestamp when this Artifact was created.
  /// [description] Description of the Artifact
  /// [displayName] User provided display name of the Artifact. May be up to 128 Unicode characters.
  /// [etag] An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Artifacts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Artifact (System labels are excluded).
  /// [metadata] Properties of the Artifact. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  /// [name] The resource name of the Artifact.
  /// [schemaTitle] The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [schemaVersion] The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [state] The state of this Artifact. This is a property of the Artifact, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines), and the system does not prescribe or check the validity of state transitions.
  /// [updateTime] Timestamp when this Artifact was last updated.
  /// [uri] The uniform resource identifier of the artifact file. May be empty if there is no actual artifact file.
  GetArtifactAiplatformV1beta1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.metadata,
    required this.name,
    required this.schemaTitle,
    required this.schemaVersion,
    required this.state,
    required this.updateTime,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['labels'] = labels;
    map['metadata'] = metadata;
    map['name'] = name;
    map['schemaTitle'] = schemaTitle;
    map['schemaVersion'] = schemaVersion;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['uri'] = uri;
    return map;
  }

  factory GetArtifactAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetArtifactAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      schemaTitle: map['schemaTitle'] as String,
      schemaVersion: map['schemaVersion'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      uri: map['uri'] as String,
    );
  }
}
