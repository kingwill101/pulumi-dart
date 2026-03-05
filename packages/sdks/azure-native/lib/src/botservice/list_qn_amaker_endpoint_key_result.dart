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
      installedVersion: (() { final guardedValue = map['installedVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStableVersion: (() { final guardedValue = map['lastStableVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryEndpointKey: (() { final guardedValue = map['primaryEndpointKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryEndpointKey: (() { final guardedValue = map['secondaryEndpointKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

