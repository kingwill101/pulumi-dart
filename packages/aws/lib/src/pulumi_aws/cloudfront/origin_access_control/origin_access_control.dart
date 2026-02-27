import 'package:pulumi/pulumi.dart';
import 'origin_access_control_args.dart';

/// Manages an AWS CloudFront Origin Access Control, which is used by CloudFront Distributions with an Amazon S3 bucket as the origin.
///
/// Read more about Origin Access Control in the [CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Origin Access Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessControl:OriginAccessControl example E327GJI25M56DG
/// ```
class OriginAccessControl extends CustomResource {
  /// The Origin Access Control ARN.
  late final Output<String> arn;

  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  late final Output<String?> description;

  /// The current version of this Origin Access Control.
  late final Output<String> etag;

  /// A name that identifies the Origin Access Control.
  late final Output<String> name;

  /// The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  late final Output<String> originAccessControlOriginType;

  /// Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  late final Output<String> signingBehavior;

  /// Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  late final Output<String> signingProtocol;

  OriginAccessControl(
    String name, {
    OriginAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessControl:OriginAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.originAccessControlOriginType =
        registerOutput<String>('originAccessControlOriginType');
    this.signingBehavior = registerOutput<String>('signingBehavior');
    this.signingProtocol = registerOutput<String>('signingProtocol');
  }
}
