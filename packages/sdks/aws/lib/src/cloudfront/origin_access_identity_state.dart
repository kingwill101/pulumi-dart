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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? callerReference,
    pulumi.Output<String>? cloudfrontAccessIdentityPath,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? iamArn,
    pulumi.Output<String>? s3CanonicalUserId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      callerReference = pulumi.Input.asOptionalInput<String>(callerReference),
      cloudfrontAccessIdentityPath = pulumi.Input.asOptionalInput<String>(cloudfrontAccessIdentityPath),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      iamArn = pulumi.Input.asOptionalInput<String>(iamArn),
      s3CanonicalUserId = pulumi.Input.asOptionalInput<String>(s3CanonicalUserId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      callerReference: map['callerReference'] == null ? null : pulumi.Output.create<String>(map['callerReference'] as String),
      cloudfrontAccessIdentityPath: map['cloudfrontAccessIdentityPath'] == null ? null : pulumi.Output.create<String>(map['cloudfrontAccessIdentityPath'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      iamArn: map['iamArn'] == null ? null : pulumi.Output.create<String>(map['iamArn'] as String),
      s3CanonicalUserId: map['s3CanonicalUserId'] == null ? null : pulumi.Output.create<String>(map['s3CanonicalUserId'] as String),
    );
  }
}

