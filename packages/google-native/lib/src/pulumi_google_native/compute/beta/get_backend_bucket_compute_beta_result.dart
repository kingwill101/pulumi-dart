// ignore_for_file: unused_element, unnecessary_cast

import 'backend_bucket_cdn_policy_response_compute_beta.dart';

/// Result data returned by getBackendBucket.
class GetBackendBucketComputeBetaResult {
  /// Cloud Storage bucket name.
  final String bucketName;

  /// Cloud CDN configuration for this BackendBucket.
  final BackendBucketCdnPolicyResponseComputeBeta cdnPolicy;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final String compressionMode;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// Headers that the Application Load Balancer should add to proxied responses.
  final List<String> customResponseHeaders;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String description;

  /// The resource URL for the edge security policy associated with this backend bucket.
  final String edgeSecurityPolicy;

  /// If true, enable Cloud CDN for this BackendBucket.
  final bool enableCdn;

  /// Type of the resource.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Server-defined URL for the resource.
  final String selfLink;

  GetBackendBucketComputeBetaResult({
    required this.bucketName,
    required this.cdnPolicy,
    required this.compressionMode,
    required this.creationTimestamp,
    required this.customResponseHeaders,
    required this.description,
    required this.edgeSecurityPolicy,
    required this.enableCdn,
    required this.kind,
    required this.name,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['cdnPolicy'] = cdnPolicy.toMap();
    map['compressionMode'] = compressionMode;
    map['creationTimestamp'] = creationTimestamp;
    map['customResponseHeaders'] = customResponseHeaders;
    map['description'] = description;
    map['edgeSecurityPolicy'] = edgeSecurityPolicy;
    map['enableCdn'] = enableCdn;
    map['kind'] = kind;
    map['name'] = name;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetBackendBucketComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketComputeBetaResult(
      bucketName: map['bucketName'] as String,
      cdnPolicy: BackendBucketCdnPolicyResponseComputeBeta.fromMap(
          (map['cdnPolicy'] as Map).cast<String, dynamic>()),
      compressionMode: map['compressionMode'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      customResponseHeaders:
          (map['customResponseHeaders'] as List).cast<String>(),
      description: map['description'] as String,
      edgeSecurityPolicy: map['edgeSecurityPolicy'] as String,
      enableCdn: map['enableCdn'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
