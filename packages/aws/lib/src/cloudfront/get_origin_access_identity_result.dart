// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOriginAccessIdentity.
class GetOriginAccessIdentityResult {
  /// The origin access identity ARN.
  final String arn;

  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  final String callerReference;

  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  final String cloudfrontAccessIdentityPath;

  /// An optional comment for the origin access identity.
  final String comment;

  /// Current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  final String etag;

  /// Pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  final String iamArn;
  final String id;

  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  final String s3CanonicalUserId;

  /// Creates a new [GetOriginAccessIdentityResult].
  /// [arn] The origin access identity ARN.
  /// [callerReference] Internal value used by CloudFront to allow future
  /// [cloudfrontAccessIdentityPath] A shortcut to the full path for the
  /// [comment] An optional comment for the origin access identity.
  /// [etag] Current version of the origin access identity's information.
  /// [iamArn] Pre-generated ARN for use in S3 bucket policies (see below).
  /// [id] Required.
  /// [s3CanonicalUserId] The Amazon S3 canonical user ID for the origin
  GetOriginAccessIdentityResult({
    required this.arn,
    required this.callerReference,
    required this.cloudfrontAccessIdentityPath,
    required this.comment,
    required this.etag,
    required this.iamArn,
    required this.id,
    required this.s3CanonicalUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'callerReference': callerReference,
      'cloudfrontAccessIdentityPath': cloudfrontAccessIdentityPath,
      'comment': comment,
      'etag': etag,
      'iamArn': iamArn,
      'id': id,
      's3CanonicalUserId': s3CanonicalUserId,
    };
  }

  factory GetOriginAccessIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentityResult(
      arn: map['arn'] as String,
      callerReference: map['callerReference'] as String,
      cloudfrontAccessIdentityPath:
          map['cloudfrontAccessIdentityPath'] as String,
      comment: map['comment'] as String,
      etag: map['etag'] as String,
      iamArn: map['iamArn'] as String,
      id: map['id'] as String,
      s3CanonicalUserId: map['s3CanonicalUserId'] as String,
    );
  }
}
