import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_store_ca_certificates_bundle_source/trust_store_ca_certificates_bundle_source.dart';
import '../trust_store_timeouts/trust_store_timeouts.dart';
import 'trust_store_args.dart';

/// Manages an AWS CloudFront Trust Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With S3 Object Version
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Trust Store using the trust store ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/trustStore:TrustStore example ts_12abcXYZhA4Q6RS6tuvW5Xy0ZZZ
/// ```
class TrustStore extends pulumi.CustomResource {
  /// ARN of the trust store.
  late final pulumi.Output<String> arn;

  /// Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<TrustStoreCaCertificatesBundleSource>
      caCertificatesBundleSource;

  /// ETag of the trust store.
  late final pulumi.Output<String> etag;

  /// Name of the trust store. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Number of CA certificates in the trust store.
  late final pulumi.Output<int> numberOfCaCertificates;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TrustStoreTimeouts?> timeouts;

  TrustStore(
    String name, {
    TrustStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.caCertificatesBundleSource =
        registerOutput<TrustStoreCaCertificatesBundleSource>(
            'caCertificatesBundleSource');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.numberOfCaCertificates = registerOutput<int>('numberOfCaCertificates');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<TrustStoreTimeouts?>('timeouts');
  }
}
