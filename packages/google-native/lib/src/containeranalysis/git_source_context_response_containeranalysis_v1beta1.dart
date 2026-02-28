// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextResponseContaineranalysisV1beta1 {
  /// Git commit hash.
  final String revisionId;

  /// Git repository URL.
  final String url;

  /// Creates a new [GitSourceContextResponseContaineranalysisV1beta1].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GitSourceContextResponseContaineranalysisV1beta1({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionId'] = revisionId;
    map['url'] = url;
    return map;
  }

  factory GitSourceContextResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GitSourceContextResponseContaineranalysisV1beta1(
      revisionId: map['revisionId'] as String,
      url: map['url'] as String,
    );
  }
}
