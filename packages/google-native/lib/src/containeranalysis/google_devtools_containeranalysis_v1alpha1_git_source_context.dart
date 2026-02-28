// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext {
  /// Git commit hash.
  final String revisionId;

  /// Git repository URL.
  final String? url;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext].
  /// [revisionId] Git commit hash.
  /// [url] Git repository URL.
  GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext({
    required this.revisionId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionId'] = revisionId;
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext(
      revisionId: map['revisionId'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
