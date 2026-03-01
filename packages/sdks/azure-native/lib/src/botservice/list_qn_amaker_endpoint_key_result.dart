// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listQnAMakerEndpointKey.
class ListQnAMakerEndpointKeyResult {
  /// Current version of runtime.
  final String? installedVersion;
  /// Latest version of runtime.
  final String? lastStableVersion;
  /// Primary Access Key.
  final String? primaryEndpointKey;
  /// Secondary Access Key.
  final String? secondaryEndpointKey;

  /// Creates a new [ListQnAMakerEndpointKeyResult].
  /// [installedVersion] Current version of runtime.
  /// [lastStableVersion] Latest version of runtime.
  /// [primaryEndpointKey] Primary Access Key.
  /// [secondaryEndpointKey] Secondary Access Key.
  ListQnAMakerEndpointKeyResult({
    this.installedVersion,
    this.lastStableVersion,
    this.primaryEndpointKey,
    this.secondaryEndpointKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installedVersion': ?installedVersion,
      'lastStableVersion': ?lastStableVersion,
      'primaryEndpointKey': ?primaryEndpointKey,
      'secondaryEndpointKey': ?secondaryEndpointKey,
    };
  }

  factory ListQnAMakerEndpointKeyResult.fromMap(Map<String, dynamic> map) {
    return ListQnAMakerEndpointKeyResult(
      installedVersion: map['installedVersion'] == null ? null : map['installedVersion'] as String,
      lastStableVersion: map['lastStableVersion'] == null ? null : map['lastStableVersion'] as String,
      primaryEndpointKey: map['primaryEndpointKey'] == null ? null : map['primaryEndpointKey'] as String,
      secondaryEndpointKey: map['secondaryEndpointKey'] == null ? null : map['secondaryEndpointKey'] as String,
    );
  }
}

