// ignore_for_file: unused_element, unnecessary_cast

class RepositoryCleanupPolicyCondition {
  /// Match versions newer than a duration.
  final String? newerThan;

  /// Match versions older than a duration.
  final String? olderThan;

  /// Match versions by package prefix. Applied on any prefix match.
  final List<String>? packageNamePrefixes;

  /// Match versions by tag prefix. Applied on any prefix match.
  final List<String>? tagPrefixes;

  /// Match versions by tag status.
  /// Default value is `ANY`.
  /// Possible values are: `TAGGED`, `UNTAGGED`, `ANY`.
  final String? tagState;

  /// Match versions by version name prefix. Applied on any prefix match.
  final List<String>? versionNamePrefixes;

  RepositoryCleanupPolicyCondition({
    this.newerThan,
    this.olderThan,
    this.packageNamePrefixes,
    this.tagPrefixes,
    this.tagState,
    this.versionNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final newerThanValue = newerThan;
    if (newerThanValue != null) {
      map['newerThan'] = newerThanValue;
    }
    final olderThanValue = olderThan;
    if (olderThanValue != null) {
      map['olderThan'] = olderThanValue;
    }
    final packageNamePrefixesValue = packageNamePrefixes;
    if (packageNamePrefixesValue != null) {
      map['packageNamePrefixes'] = packageNamePrefixesValue;
    }
    final tagPrefixesValue = tagPrefixes;
    if (tagPrefixesValue != null) {
      map['tagPrefixes'] = tagPrefixesValue;
    }
    final tagStateValue = tagState;
    if (tagStateValue != null) {
      map['tagState'] = tagStateValue;
    }
    final versionNamePrefixesValue = versionNamePrefixes;
    if (versionNamePrefixesValue != null) {
      map['versionNamePrefixes'] = versionNamePrefixesValue;
    }
    return map;
  }

  factory RepositoryCleanupPolicyCondition.fromMap(Map<String, dynamic> map) {
    return RepositoryCleanupPolicyCondition(
      newerThan: map['newerThan'] == null ? null : map['newerThan'] as String,
      olderThan: map['olderThan'] == null ? null : map['olderThan'] as String,
      packageNamePrefixes: map['packageNamePrefixes'] == null
          ? null
          : (map['packageNamePrefixes'] as List).cast<String>(),
      tagPrefixes: map['tagPrefixes'] == null
          ? null
          : (map['tagPrefixes'] as List).cast<String>(),
      tagState: map['tagState'] == null ? null : map['tagState'] as String,
      versionNamePrefixes: map['versionNamePrefixes'] == null
          ? null
          : (map['versionNamePrefixes'] as List).cast<String>(),
    );
  }
}
