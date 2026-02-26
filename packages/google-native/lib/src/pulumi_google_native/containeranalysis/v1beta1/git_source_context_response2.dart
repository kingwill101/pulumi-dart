// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextResponse2 {
  /// Git commit hash.
  final String revisionId;

  /// Git repository URL.
  final String url;

  GitSourceContextResponse2({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionId'] = revisionId;
    map['url'] = url;
    return map;
  }

  factory GitSourceContextResponse2.fromMap(Map<String, dynamic> map) {
    return GitSourceContextResponse2(
      revisionId: map['revisionId'] as String,
      url: map['url'] as String,
    );
  }
}
