// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginAccessIdentity resources.
class OriginAccessIdentityState {
  /// The origin access identity ARN.
  final pulumi.Input<String>? arn;
  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  final pulumi.Input<String>? callerReference;
  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  final pulumi.Input<String>? cloudfrontAccessIdentityPath;
  /// An optional comment for the origin access identity.
  final pulumi.Input<String>? comment;
  /// The current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  final pulumi.Input<String>? etag;
  /// A pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  final pulumi.Input<String>? iamArn;
  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  final pulumi.Input<String>? s3CanonicalUserId;

  /// Creates a new [OriginAccessIdentityState].
  /// [arn] The origin access identity ARN.
  /// [callerReference] Internal value used by CloudFront to allow future
  /// [cloudfrontAccessIdentityPath] A shortcut to the full path for the
  /// [comment] An optional comment for the origin access identity.
  /// [etag] The current version of the origin access identity's information.
  /// [iamArn] A pre-generated ARN for use in S3 bucket policies (see below).
  /// [s3CanonicalUserId] The Amazon S3 canonical user ID for the origin
  OriginAccessIdentityState({
    this.arn,
    this.callerReference,
    this.cloudfrontAccessIdentityPath,
    this.comment,
    this.etag,
    this.iamArn,
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
      's3CanonicalUserId': ?s3CanonicalUserId,
    };
  }

  factory OriginAccessIdentityState.fromMap(Map<String, dynamic> map) {
    return OriginAccessIdentityState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      callerReference: map['callerReference'] == null ? null : ((map['callerReference'] as String).input()).input(),
      cloudfrontAccessIdentityPath: map['cloudfrontAccessIdentityPath'] == null ? null : ((map['cloudfrontAccessIdentityPath'] as String).input()).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      etag: map['etag'] == null ? null : ((map['etag'] as String).input()).input(),
      iamArn: map['iamArn'] == null ? null : ((map['iamArn'] as String).input()).input(),
      s3CanonicalUserId: map['s3CanonicalUserId'] == null ? null : ((map['s3CanonicalUserId'] as String).input()).input(),
    );
  }
}

