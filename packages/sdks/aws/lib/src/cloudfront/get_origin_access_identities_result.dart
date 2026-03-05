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

  /// Creates a new [GetOriginAccessIdentitiesResult].
  /// [comments] Optional.
  /// [iamArns] Set of ARNs of the matched origin access identities.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of ids of the matched origin access identities.
  /// [s3CanonicalUserIds] Set of S3 canonical user IDs of the matched origin access identities.
  GetOriginAccessIdentitiesResult({
    this.comments,
    required this.iamArns,
    required this.id,
    required this.ids,
    required this.s3CanonicalUserIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
      'iamArns': iamArns,
      'id': id,
      'ids': ids,
      's3CanonicalUserIds': s3CanonicalUserIds,
    };
  }

  factory GetOriginAccessIdentitiesResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentitiesResult(
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      iamArns: (map['iamArns'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      s3CanonicalUserIds: (map['s3CanonicalUserIds'] as List).cast<String>(),
    );
  }
}

