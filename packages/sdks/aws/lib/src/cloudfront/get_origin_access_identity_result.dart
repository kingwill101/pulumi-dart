// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOriginAccessIdentity.
class GetOriginAccessIdentityResult {
  /// The origin access identity ARN.
  final String? arn;
  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  final String? callerReference;
  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  final String? cloudfrontAccessIdentityPath;
  /// An optional comment for the origin access identity.
  final String? comment;
  /// Current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  final String? etag;
  /// Pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  final String? iamArn;
  final String? id;
  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  final String? s3CanonicalUserId;

  /// Creates a new [GetOriginAccessIdentityResult].
  /// [arn] The origin access identity ARN.
  /// [callerReference] Internal value used by CloudFront to allow future
  /// [cloudfrontAccessIdentityPath] A shortcut to the full path for the
  /// [comment] An optional comment for the origin access identity.
  /// [etag] Current version of the origin access identity's information.
  /// [iamArn] Pre-generated ARN for use in S3 bucket policies (see below).
  /// [id] Optional.
  /// [s3CanonicalUserId] The Amazon S3 canonical user ID for the origin
  const GetOriginAccessIdentityResult({
    this.arn,
    this.callerReference,
    this.cloudfrontAccessIdentityPath,
    this.comment,
    this.etag,
    this.iamArn,
    this.id,
    this.s3CanonicalUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'callerReference': ?callerReference,
      'cloudfrontAccessIdentityPath': ?cloudfrontAccessIdentityPath,
      'comment': ?comment,
      'etag': ?etag,
      'iamArn': ?iamArn,
      'id': ?id,
      's3CanonicalUserId': ?s3CanonicalUserId,
    };
  }

  factory GetOriginAccessIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudfrontAccessIdentityPath: (() { final guardedValue = map['cloudfrontAccessIdentityPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamArn: (() { final guardedValue = map['iamArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3CanonicalUserId: (() { final guardedValue = map['s3CanonicalUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
