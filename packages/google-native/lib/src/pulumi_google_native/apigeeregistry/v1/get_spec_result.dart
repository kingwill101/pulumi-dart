// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSpec.
class GetSpecResult {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String> annotations;

  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  final String contents;

  /// Creation timestamp; when the spec resource was created.
  final String createTime;

  /// A detailed description.
  final String description;

  /// A possibly-hierarchical name used to refer to the spec from other specs.
  final String filename;

  /// A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.
  final String hash;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Map<String, String> labels;

  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final String mimeType;

  /// Resource name.
  final String name;

  /// Revision creation timestamp; when the represented revision was created.
  final String revisionCreateTime;

  /// Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.
  final String revisionId;

  /// Last update timestamp: when the represented revision was last modified.
  final String revisionUpdateTime;

  /// The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.
  final int sizeBytes;

  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  final String sourceUri;

  GetSpecResult({
    required this.annotations,
    required this.contents,
    required this.createTime,
    required this.description,
    required this.filename,
    required this.hash,
    required this.labels,
    required this.mimeType,
    required this.name,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.revisionUpdateTime,
    required this.sizeBytes,
    required this.sourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['contents'] = contents;
    map['createTime'] = createTime;
    map['description'] = description;
    map['filename'] = filename;
    map['hash'] = hash;
    map['labels'] = labels;
    map['mimeType'] = mimeType;
    map['name'] = name;
    map['revisionCreateTime'] = revisionCreateTime;
    map['revisionId'] = revisionId;
    map['revisionUpdateTime'] = revisionUpdateTime;
    map['sizeBytes'] = sizeBytes;
    map['sourceUri'] = sourceUri;
    return map;
  }

  factory GetSpecResult.fromMap(Map<String, dynamic> map) {
    return GetSpecResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      contents: map['contents'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      filename: map['filename'] as String,
      hash: map['hash'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] as String,
      name: map['name'] as String,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      revisionUpdateTime: map['revisionUpdateTime'] as String,
      sizeBytes: map['sizeBytes'] as int,
      sourceUri: map['sourceUri'] as String,
    );
  }
}
