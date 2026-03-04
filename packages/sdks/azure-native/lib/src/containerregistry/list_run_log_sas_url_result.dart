// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listRunLogSasUrl.
class ListRunLogSasUrlResult {
  /// The link to logs in registry for a run on a azure container registry.
  final String? logArtifactLink;

  /// The link to logs for a run on a azure container registry.
  final String? logLink;

  /// Creates a new [ListRunLogSasUrlResult].
  /// [logArtifactLink] The link to logs in registry for a run on a azure container registry.
  /// [logLink] The link to logs for a run on a azure container registry.
  ListRunLogSasUrlResult({this.logArtifactLink, this.logLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logArtifactLink': ?logArtifactLink,
      'logLink': ?logLink,
    };
  }

  factory ListRunLogSasUrlResult.fromMap(Map<String, dynamic> map) {
    return ListRunLogSasUrlResult(
      logArtifactLink: (() {
        final guardedValue = map['logArtifactLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      logLink: (() {
        final guardedValue = map['logLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
