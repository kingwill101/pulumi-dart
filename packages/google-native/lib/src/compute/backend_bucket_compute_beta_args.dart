// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_compute_beta.dart';
import 'backend_bucket_compression_mode_compute_beta.dart';

/// {@template pulumi_compute_beta_backend_bucket_compute_beta_args_doc}
/// The set of arguments for BackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_backend_bucket_compute_beta_args_doc}
class BackendBucketComputeBetaArgs {
  /// Cloud Storage bucket name.
  final pulumi.Input<String>? bucketName;

  /// Cloud CDN configuration for this BackendBucket.
  final pulumi.Input<BackendBucketCdnPolicyComputeBeta>? cdnPolicy;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<BackendBucketCompressionModeComputeBeta>? compressionMode;

  /// Headers that the Application Load Balancer should add to proxied responses.
  final pulumi.Input<List<String>>? customResponseHeaders;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;

  /// If true, enable Cloud CDN for this BackendBucket.
  final pulumi.Input<bool>? enableCdn;

  /// Type of the resource.
  final pulumi.Input<String>? kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [BackendBucketComputeBetaArgs].
  /// [bucketName] Cloud Storage bucket name.
  /// [cdnPolicy] Cloud CDN configuration for this BackendBucket.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [customResponseHeaders] Headers that the Application Load Balancer should add to proxied responses.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [enableCdn] If true, enable Cloud CDN for this BackendBucket.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  BackendBucketComputeBetaArgs({
    String? bucketName,
    BackendBucketCdnPolicyComputeBeta? cdnPolicy,
    BackendBucketCompressionModeComputeBeta? compressionMode,
    List<String>? customResponseHeaders,
    String? description,
    bool? enableCdn,
    String? kind,
    String? name,
    String? project,
    String? requestId,
  })  : bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
        cdnPolicy =
            pulumi.Input.asOptionalInput<BackendBucketCdnPolicyComputeBeta>(
                cdnPolicy),
        compressionMode = pulumi.Input.asOptionalInput<
            BackendBucketCompressionModeComputeBeta>(compressionMode),
        customResponseHeaders =
            pulumi.Input.asOptionalInput<List<String>>(customResponseHeaders),
        description = pulumi.Input.asOptionalInput<String>(description),
        enableCdn = pulumi.Input.asOptionalInput<bool>(enableCdn),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = pulumi.Input.mapOptionalInputValue<
          BackendBucketCdnPolicyComputeBeta,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] = pulumi.Input.mapOptionalInputValue<
          BackendBucketCompressionModeComputeBeta,
          String>(compressionModeValue, (value) => value.value);
    }
    final customResponseHeadersValue = customResponseHeaders;
    if (customResponseHeadersValue != null) {
      map['customResponseHeaders'] = customResponseHeadersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableCdnValue = enableCdn;
    if (enableCdnValue != null) {
      map['enableCdn'] = enableCdnValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory BackendBucketComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketComputeBetaArgs(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      cdnPolicy: map['cdnPolicy'] == null
          ? null
          : BackendBucketCdnPolicyComputeBeta.fromMap(
              (map['cdnPolicy'] as Map).cast<String, dynamic>()),
      compressionMode: map['compressionMode'] == null
          ? null
          : BackendBucketCompressionModeComputeBeta.fromValue(
              map['compressionMode'] as String),
      customResponseHeaders: map['customResponseHeaders'] == null
          ? null
          : (map['customResponseHeaders'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      enableCdn: map['enableCdn'] == null ? null : map['enableCdn'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
