import 'package:pulumi/pulumi.dart';
import 'trust_store_args2.dart';

/// Provides a ELBv2 Trust Store for use with Application Load Balancer Listener resources.
///
/// ## Example Usage
///
/// ### Trust Store Load Balancer Listener
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the trust store.
///
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/trustStore:TrustStore example arn:aws:elasticloadbalancing:us-west-2:187416307283:truststore/my-trust-store/20cfe21448b66314
/// ```
class TrustStore2 extends CustomResource {
  /// ARN of the Trust Store (matches `id`).
  late final Output<String> arn;

  /// ARN suffix for use with CloudWatch Metrics.
  late final Output<String> arnSuffix;

  /// S3 Bucket name holding the client certificate CA bundle.
  late final Output<String> caCertificatesBundleS3Bucket;

  /// S3 object key holding the client certificate CA bundle.
  late final Output<String> caCertificatesBundleS3Key;

  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  late final Output<String?> caCertificatesBundleS3ObjectVersion;

  /// Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  TrustStore2(
    String name, {
    TrustStoreArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/trustStore:TrustStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnSuffix = registerOutput<String>('arnSuffix');
    this.caCertificatesBundleS3Bucket =
        registerOutput<String>('caCertificatesBundleS3Bucket');
    this.caCertificatesBundleS3Key =
        registerOutput<String>('caCertificatesBundleS3Key');
    this.caCertificatesBundleS3ObjectVersion =
        registerOutput<String?>('caCertificatesBundleS3ObjectVersion');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
