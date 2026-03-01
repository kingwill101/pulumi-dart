// ignore_for_file: unused_element, unnecessary_cast

import 'backend_bucket_cdn_policy_response_compute_v1.dart';

/// Result data returned by getBackendBucket.
class GetBackendBucketComputeV1Result {
  /// Cloud Storage bucket name.
  final String bucketName;

  /// Cloud CDN configuration for this BackendBucket.
  final BackendBucketCdnPolicyResponseComputeV1 cdnPolicy;

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

  /// Creates a new [GetBackendBucketComputeV1Result].
  /// [bucketName] Cloud Storage bucket name.
  /// [cdnPolicy] Cloud CDN configuration for this BackendBucket.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customResponseHeaders] Headers that the Application Load Balancer should add to proxied responses.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [edgeSecurityPolicy] The resource URL for the edge security policy associated with this backend bucket.
  /// [enableCdn] If true, enable Cloud CDN for this BackendBucket.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [selfLink] Server-defined URL for the resource.
  GetBackendBucketComputeV1Result({
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
    return <String, dynamic>{
      'bucketName': bucketName,
      'cdnPolicy': cdnPolicy.toMap(),
      'compressionMode': compressionMode,
      'creationTimestamp': creationTimestamp,
      'customResponseHeaders': customResponseHeaders,
      'description': description,
      'edgeSecurityPolicy': edgeSecurityPolicy,
      'enableCdn': enableCdn,
      'kind': kind,
      'name': name,
      'selfLink': selfLink,
    };
  }

  factory GetBackendBucketComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketComputeV1Result(
      bucketName: map['bucketName'] as String,
      cdnPolicy: BackendBucketCdnPolicyResponseComputeV1.fromMap(
        (map['cdnPolicy'] as Map).cast<String, dynamic>(),
      ),
      compressionMode: map['compressionMode'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      customResponseHeaders: (map['customResponseHeaders'] as List)
          .cast<String>(),
      description: map['description'] as String,
      edgeSecurityPolicy: map['edgeSecurityPolicy'] as String,
      enableCdn: map['enableCdn'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
