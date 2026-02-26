// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryCleanupPolicyMostRecentVersion {
  /// Minimum number of versions to keep.
  final int keepCount;

  /// Match versions by package prefix. Applied on any prefix match.
  final List<String> packageNamePrefixes;

  GetRepositoryCleanupPolicyMostRecentVersion({
    required this.keepCount,
    required this.packageNamePrefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keepCount'] = keepCount;
    map['packageNamePrefixes'] = packageNamePrefixes;
    return map;
  }

  factory GetRepositoryCleanupPolicyMostRecentVersion.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryCleanupPolicyMostRecentVersion(
      keepCount: map['keepCount'] as int,
      packageNamePrefixes: (map['packageNamePrefixes'] as List).cast<String>(),
    );
  }
}
