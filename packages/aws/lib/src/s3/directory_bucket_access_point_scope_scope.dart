// ignore_for_file: unused_element, unnecessary_cast

class DirectoryBucketAccessPointScopeScope {
  /// You can specify a list of API operations as permissions for the access point.
  final List<String>? permissions;

  /// You can specify a list of prefixes, but the total length of characters of all prefixes must be less than 256 bytes.
  ///
  /// * For more information on access point scope, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html).
  final List<String>? prefixes;

  /// Creates a new [DirectoryBucketAccessPointScopeScope].
  /// [permissions] You can specify a list of API operations as permissions for the access point.
  /// [prefixes] You can specify a list of prefixes, but the total length of characters of all prefixes must be less than 256 bytes.
  DirectoryBucketAccessPointScopeScope({
    this.permissions,
    this.prefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    final prefixesValue = prefixes;
    if (prefixesValue != null) {
      map['prefixes'] = prefixesValue;
    }
    return map;
  }

  factory DirectoryBucketAccessPointScopeScope.fromMap(
      Map<String, dynamic> map) {
    return DirectoryBucketAccessPointScopeScope(
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
      prefixes: map['prefixes'] == null
          ? null
          : (map['prefixes'] as List).cast<String>(),
    );
  }
}
