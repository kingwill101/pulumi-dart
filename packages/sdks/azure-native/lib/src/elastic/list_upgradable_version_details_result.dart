// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listUpgradableVersionDetails.
class ListUpgradableVersionDetailsResult {
  /// Current version of the elastic monitor
  final String? currentVersion;
  /// Stack Versions that this version can upgrade to
  final List<String>? upgradableVersions;

  /// Creates a new [ListUpgradableVersionDetailsResult].
  /// [currentVersion] Current version of the elastic monitor
  /// [upgradableVersions] Stack Versions that this version can upgrade to
  const ListUpgradableVersionDetailsResult({
    this.currentVersion,
    this.upgradableVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': ?currentVersion,
      'upgradableVersions': ?upgradableVersions,
    };
  }

  factory ListUpgradableVersionDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListUpgradableVersionDetailsResult(
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradableVersions: (() { final guardedValue = map['upgradableVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
