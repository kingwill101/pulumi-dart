// ignore_for_file: unused_element, unnecessary_cast

/// Instance of a general context.
class GoogleCloudAiplatformV1ContextResponse {
  /// Timestamp when this Context was created.
  final String createTime;

  /// Description of the Context
  final String description;

  /// User provided display name of the Context. May be up to 128 Unicode characters.
  final String displayName;

  /// An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// The labels with user-defined metadata to organize your Contexts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Context (System labels are excluded).
  final Map<String, String> labels;

  /// Properties of the Context. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  final Map<String, String> metadata;

  /// Immutable. The resource name of the Context.
  final String name;

  /// A list of resource names of Contexts that are parents of this Context. A Context may have at most 10 parent_contexts.
  final List<String> parentContexts;

  /// The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String schemaTitle;

  /// The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String schemaVersion;

  /// Timestamp when this Context was last updated.
  final String updateTime;

  /// Creates a new [GoogleCloudAiplatformV1ContextResponse].
  /// [createTime] Timestamp when this Context was created.
  /// [description] Description of the Context
  /// [displayName] User provided display name of the Context. May be up to 128 Unicode characters.
  /// [etag] An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Contexts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Context (System labels are excluded).
  /// [metadata] Properties of the Context. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  /// [name] Immutable. The resource name of the Context.
  /// [parentContexts] A list of resource names of Contexts that are parents of this Context. A Context may have at most 10 parent_contexts.
  /// [schemaTitle] The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [schemaVersion] The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [updateTime] Timestamp when this Context was last updated.
  GoogleCloudAiplatformV1ContextResponse({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.metadata,
    required this.name,
    required this.parentContexts,
    required this.schemaTitle,
    required this.schemaVersion,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'etag': etag,
      'labels': labels,
      'metadata': metadata,
      'name': name,
      'parentContexts': parentContexts,
      'schemaTitle': schemaTitle,
      'schemaVersion': schemaVersion,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudAiplatformV1ContextResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ContextResponse(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parentContexts: (map['parentContexts'] as List).cast<String>(),
      schemaTitle: map['schemaTitle'] as String,
      schemaVersion: map['schemaVersion'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
