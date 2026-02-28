// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GitSourceContextContaineranalysisV1beta1 {
  /// Git commit hash.
  final String? revisionId;

  /// Git repository URL.
  final String? url;

  /// Creates a new [GitSourceContextContaineranalysisV1beta1].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GitSourceContextContaineranalysisV1beta1({
    this.revisionId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GitSourceContextContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GitSourceContextContaineranalysisV1beta1(
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
