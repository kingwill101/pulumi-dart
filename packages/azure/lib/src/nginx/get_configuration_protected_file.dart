// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationProtectedFile {
  /// The base-64 encoded contents of this configuration file.
  final String content;
  /// The hash of the contents of this configuration file prefixed by the algorithm used.
  final String contentHash;
  /// The path of this configuration file.
  final String virtualPath;

  /// Creates a new [GetConfigurationProtectedFile].
  /// [content] The base-64 encoded contents of this configuration file.
  /// [contentHash] The hash of the contents of this configuration file prefixed by the algorithm used.
  /// [virtualPath] The path of this configuration file.
  GetConfigurationProtectedFile({
    required this.content,
    required this.contentHash,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentHash': contentHash,
      'virtualPath': virtualPath,
    };
  }

  factory GetConfigurationProtectedFile.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProtectedFile(
      content: map['content'] as String,
      contentHash: map['contentHash'] as String,
      virtualPath: map['virtualPath'] as String,
    );
  }
}

