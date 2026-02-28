// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextResponse {
  /// Git commit hash.
  final String revisionId;

  /// Git repository URL.
  final String url;

  /// Creates a new [GitSourceContextResponse].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GitSourceContextResponse({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionId'] = revisionId;
    map['url'] = url;
    return map;
  }

  factory GitSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GitSourceContextResponse(
      revisionId: map['revisionId'] as String,
      url: map['url'] as String,
    );
  }
}
