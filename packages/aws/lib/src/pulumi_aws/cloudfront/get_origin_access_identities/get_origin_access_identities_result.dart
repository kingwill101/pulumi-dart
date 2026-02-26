// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOriginAccessIdentities.
class GetOriginAccessIdentitiesResult {
  final List<String>? comments;

  /// Set of ARNs of the matched origin access identities.
  final List<String> iamArns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of ids of the matched origin access identities.
  final List<String> ids;

  /// Set of S3 canonical user IDs of the matched origin access identities.
  final List<String> s3CanonicalUserIds;

  GetOriginAccessIdentitiesResult({
    this.comments,
    required this.iamArns,
    required this.id,
    required this.ids,
    required this.s3CanonicalUserIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentsValue = comments;
    if (commentsValue != null) {
      map['comments'] = commentsValue;
    }
    map['iamArns'] = iamArns;
    map['id'] = id;
    map['ids'] = ids;
    map['s3CanonicalUserIds'] = s3CanonicalUserIds;
    return map;
  }

  factory GetOriginAccessIdentitiesResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentitiesResult(
      comments: map['comments'] == null
          ? null
          : (map['comments'] as List).cast<String>(),
      iamArns: (map['iamArns'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      s3CanonicalUserIds: (map['s3CanonicalUserIds'] as List).cast<String>(),
    );
  }
}
