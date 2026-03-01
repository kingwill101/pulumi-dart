// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoryCleanupPolicyCondition {
  /// Match versions newer than a duration.
  final String newerThan;
  /// Match versions older than a duration.
  final String olderThan;
  /// Match versions by package prefix. Applied on any prefix match.
  final List<String> packageNamePrefixes;
  /// Match versions by tag prefix. Applied on any prefix match.
  final List<String> tagPrefixes;
  /// Match versions by tag status. Default value: "ANY" Possible values: ["TAGGED", "UNTAGGED", "ANY"]
  final String tagState;
  /// Match versions by version name prefix. Applied on any prefix match.
  final List<String> versionNamePrefixes;

  /// Creates a new [GetRepositoryCleanupPolicyCondition].
  /// [newerThan] Match versions newer than a duration.
  /// [olderThan] Match versions older than a duration.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  /// [tagPrefixes] Match versions by tag prefix. Applied on any prefix match.
  /// [tagState] Match versions by tag status. Default value: "ANY" Possible values: ["TAGGED", "UNTAGGED", "ANY"]
  /// [versionNamePrefixes] Match versions by version name prefix. Applied on any prefix match.
  GetRepositoryCleanupPolicyCondition({
    required this.newerThan,
    required this.olderThan,
    required this.packageNamePrefixes,
    required this.tagPrefixes,
    required this.tagState,
    required this.versionNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerThan': newerThan,
      'olderThan': olderThan,
      'packageNamePrefixes': packageNamePrefixes,
      'tagPrefixes': tagPrefixes,
      'tagState': tagState,
      'versionNamePrefixes': versionNamePrefixes,
    };
  }

  factory GetRepositoryCleanupPolicyCondition.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCleanupPolicyCondition(
      newerThan: map['newerThan'] as String,
      olderThan: map['olderThan'] as String,
      packageNamePrefixes: (map['packageNamePrefixes'] as List).cast<String>(),
      tagPrefixes: (map['tagPrefixes'] as List).cast<String>(),
      tagState: map['tagState'] as String,
      versionNamePrefixes: (map['versionNamePrefixes'] as List).cast<String>(),
    );
  }
}

