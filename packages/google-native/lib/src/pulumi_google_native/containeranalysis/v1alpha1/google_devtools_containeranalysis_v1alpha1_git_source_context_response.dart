// ignore_for_file: unused_element, unnecessary_cast

/// A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse {
  /// Git commit hash.
  final String revisionId;

  /// Git repository URL.
  final String url;

  GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse({
    required this.revisionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionId'] = revisionId;
    map['url'] = url;
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse(
      revisionId: map['revisionId'] as String,
      url: map['url'] as String,
    );
  }
}
