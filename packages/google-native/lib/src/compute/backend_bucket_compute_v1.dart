import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_response_compute_v1.dart';
import 'backend_bucket_compute_v1_args.dart';

/// Creates a BackendBucket resource in the specified project using the data included in the request.
class BackendBucketComputeV1 extends pulumi.CustomResource {
  /// Cloud Storage bucket name.
  late final pulumi.Output<String> bucketName;
  /// Cloud CDN configuration for this BackendBucket.
  late final pulumi.Output<BackendBucketCdnPolicyResponseComputeV1> cdnPolicy;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  late final pulumi.Output<String> compressionMode;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Headers that the Application Load Balancer should add to proxied responses.
  late final pulumi.Output<List<String>> customResponseHeaders;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final pulumi.Output<String> description;
  /// The resource URL for the edge security policy associated with this backend bucket.
  late final pulumi.Output<String> edgeSecurityPolicy;
  /// If true, enable Cloud CDN for this BackendBucket.
  late final pulumi.Output<bool> enableCdn;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [BackendBucketComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendBucketComputeV1]. {@macro pulumi_compute_v1_backend_bucket_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendBucketComputeV1(
    String name, {
    BackendBucketComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:BackendBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String>('bucketName');
    this.cdnPolicy = registerOutput<BackendBucketCdnPolicyResponseComputeV1>('cdnPolicy');
    this.compressionMode = registerOutput<String>('compressionMode');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customResponseHeaders = registerOutput<List<String>>('customResponseHeaders');
    this.description = registerOutput<String>('description');
    this.edgeSecurityPolicy = registerOutput<String>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool>('enableCdn');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
