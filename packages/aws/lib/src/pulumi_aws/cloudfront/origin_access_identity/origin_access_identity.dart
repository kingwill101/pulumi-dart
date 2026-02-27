import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_access_identity_args.dart';

/// Creates an Amazon CloudFront origin access identity.
///
/// For information about CloudFront distributions, see the
/// [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For more information on generating
/// origin access identities, see
/// [Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content][2].
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
///
///
///
/// ## Using With CloudFront
///
/// Normally, when referencing an origin access identity in CloudFront, you need to
/// prefix the ID with the `origin-access-identity/cloudfront/` special path.
/// The `cloudfront_access_identity_path` allows this to be circumvented.
/// The below snippet demonstrates use with the `s3_origin_config` structure for the
/// `aws.cloudfront.Distribution` resource:
///
///
///
/// ### Updating your bucket policy
///
/// Note that the AWS API may translate the `s3_canonical_user_id` `CanonicalUser`
/// principal into an `AWS` IAM ARN principal when supplied in an
/// `aws.s3.Bucket` bucket policy, causing spurious diffs. If
/// you see this behavior, use the `iam_arn` instead:
///
///
///
/// [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html
/// [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Origin Access Identities using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessIdentity:OriginAccessIdentity origin_access E74FTE3AEXAMPLE
/// ```
class OriginAccessIdentity extends pulumi.CustomResource {
  /// The origin access identity ARN.
  late final pulumi.Output<String> arn;

  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  late final pulumi.Output<String> callerReference;

  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  late final pulumi.Output<String> cloudfrontAccessIdentityPath;

  /// An optional comment for the origin access identity.
  late final pulumi.Output<String?> comment;

  /// The current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;

  /// A pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> iamArn;

  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  late final pulumi.Output<String> s3CanonicalUserId;

  OriginAccessIdentity(
    String name, {
    OriginAccessIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessIdentity:OriginAccessIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.cloudfrontAccessIdentityPath =
        registerOutput<String>('cloudfrontAccessIdentityPath');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.iamArn = registerOutput<String>('iamArn');
    this.s3CanonicalUserId = registerOutput<String>('s3CanonicalUserId');
  }
}
