// ignore_for_file: unused_element, unnecessary_cast

class RepositoryCleanupPolicyMostRecentVersions {
  /// Minimum number of versions to keep.
  final int? keepCount;

  /// Match versions by package prefix. Applied on any prefix match.
  final List<String>? packageNamePrefixes;

  /// Creates a new [RepositoryCleanupPolicyMostRecentVersions].
  /// [keepCount] Minimum number of versions to keep.
  /// [packageNamePrefixes] Match versions by package prefix. Applied on any prefix match.
  RepositoryCleanupPolicyMostRecentVersions({
    this.keepCount,
    this.packageNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepCountValue = keepCount;
    if (keepCountValue != null) {
      map['keepCount'] = keepCountValue;
    }
    final packageNamePrefixesValue = packageNamePrefixes;
    if (packageNamePrefixesValue != null) {
      map['packageNamePrefixes'] = packageNamePrefixesValue;
    }
    return map;
  }

  factory RepositoryCleanupPolicyMostRecentVersions.fromMap(
      Map<String, dynamic> map) {
    return RepositoryCleanupPolicyMostRecentVersions(
      keepCount: map['keepCount'] == null ? null : map['keepCount'] as int,
      packageNamePrefixes: map['packageNamePrefixes'] == null
          ? null
          : (map['packageNamePrefixes'] as List).cast<String>(),
    );
  }
}
