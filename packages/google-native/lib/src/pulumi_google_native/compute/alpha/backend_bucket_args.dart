// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'backend_bucket_cdn_policy.dart';
import 'backend_bucket_compression_mode.dart';

/// The set of arguments for BackendBucket.
class BackendBucketArgs {
  /// Cloud Storage bucket name.
  final Input<String>? bucketName;

  /// Cloud CDN configuration for this BackendBucket.
  final Input<BackendBucketCdnPolicy>? cdnPolicy;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final Input<BackendBucketCompressionMode>? compressionMode;

  /// Headers that the Application Load Balancer should add to proxied responses.
  final Input<List<String>>? customResponseHeaders;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  final Input<String>? description;

  /// If true, enable Cloud CDN for this BackendBucket.
  final Input<bool>? enableCdn;

  /// Type of the resource.
  final Input<String>? kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  BackendBucketArgs({
    this.bucketName,
    this.cdnPolicy,
    this.compressionMode,
    this.customResponseHeaders,
    this.description,
    this.enableCdn,
    this.kind,
    this.name,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = Input.mapOptionalInputValue<BackendBucketCdnPolicy,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] =
          Input.mapOptionalInputValue<BackendBucketCompressionMode, String>(
              compressionModeValue, (value) => value.value);
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

  factory BackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketArgs(
      bucketName: Input.asOptionalInput<String>(map['bucketName']),
      cdnPolicy:
          Input.asOptionalInput<BackendBucketCdnPolicy>(map['cdnPolicy']),
      compressionMode: Input.asOptionalInput<BackendBucketCompressionMode>(
          map['compressionMode']),
      customResponseHeaders:
          Input.asOptionalInput<List<String>>(map['customResponseHeaders']),
      description: Input.asOptionalInput<String>(map['description']),
      enableCdn: Input.asOptionalInput<bool>(map['enableCdn']),
      kind: Input.asOptionalInput<String>(map['kind']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
