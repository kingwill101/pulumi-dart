import 'package:pulumi/pulumi.dart' as pulumi;
import '../backend_bucket_cdn_policy/backend_bucket_cdn_policy.dart';
import '../backend_bucket_params/backend_bucket_params.dart';
import 'backend_bucket_args.dart';

/// Backend buckets allow you to use Google Cloud Storage buckets with HTTP(S)
/// load balancing.
///
/// An HTTP(S) load balancer can direct traffic to specified URLs to a
/// backend bucket rather than a backend service. It can send requests for
/// static content to a Cloud Storage bucket and requests for dynamic content
/// to a virtual machine instance.
///
///
/// To get more information about BackendBucket, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/backendBuckets)
/// * How-to Guides
/// * [Using a Cloud Storage bucket as a load balancer backend](https://cloud.google.com/compute/docs/load-balancing/http/backend-bucket)
///
/// ## Example Usage
///
/// ### Backend Bucket Basic
///
///
///
/// ### Backend Bucket Security Policy
///
///
///
/// ### Backend Bucket Query String Whitelist
///
///
///
/// ### Backend Bucket Include Http Headers
///
///
///
///
/// ## Import
///
/// BackendBucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/backendBuckets/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, BackendBucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default projects/{{project}}/global/backendBuckets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default {{name}}
/// ```
class BackendBucket extends pulumi.CustomResource {
  /// Cloud Storage bucket name.
  late final pulumi.Output<String> bucketName;

  /// Cloud CDN configuration for this Backend Bucket.
  /// Structure is documented below.
  late final pulumi.Output<BackendBucketCdnPolicy> cdnPolicy;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  late final pulumi.Output<String?> compressionMode;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// Headers that the HTTP/S load balancer should add to proxied responses.
  late final pulumi.Output<List<String>?> customResponseHeaders;

  /// An optional textual description of the resource; provided by the
  /// client when the resource is created.
  late final pulumi.Output<String?> description;

  /// The security policy associated with this backend bucket.
  late final pulumi.Output<String?> edgeSecurityPolicy;

  /// If true, enable Cloud CDN for this BackendBucket.
  /// Note: This cannot be set to true when loadBalancingScheme is set to INTERNAL_MANAGED.
  late final pulumi.Output<bool?> enableCdn;

  /// The value can only be INTERNAL_MANAGED for cross-region internal layer 7 load balancer.
  /// If loadBalancingScheme is not specified, the backend bucket can be used by classic global external load balancers, or global application external load balancers, or both.
  /// Important: CDN cannot be enabled (enableCdn cannot be set to true) when loadBalancingScheme is set to INTERNAL_MANAGED.
  /// Possible values are: `INTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<BackendBucketParams?> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  BackendBucket(
    String name, {
    BackendBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucket:BackendBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String>('bucketName');
    this.cdnPolicy = registerOutput<BackendBucketCdnPolicy>('cdnPolicy');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customResponseHeaders =
        registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    this.params = registerOutput<BackendBucketParams?>('params');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
