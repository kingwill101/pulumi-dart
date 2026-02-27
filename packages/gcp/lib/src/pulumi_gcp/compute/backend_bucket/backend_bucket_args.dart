// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backend_bucket_cdn_policy/backend_bucket_cdn_policy.dart';
import '../backend_bucket_params/backend_bucket_params.dart';

/// The set of arguments for BackendBucket.
class BackendBucketArgs {
  /// Cloud Storage bucket name.
  final pulumi.Input<String> bucketName;

  /// Cloud CDN configuration for this Backend Bucket.
  /// Structure is documented below.
  final pulumi.Input<BackendBucketCdnPolicy>? cdnPolicy;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final pulumi.Input<String>? compressionMode;

  /// Headers that the HTTP/S load balancer should add to proxied responses.
  final pulumi.Input<List<String>>? customResponseHeaders;

  /// An optional textual description of the resource; provided by the
  /// client when the resource is created.
  final pulumi.Input<String>? description;

  /// The security policy associated with this backend bucket.
  final pulumi.Input<String>? edgeSecurityPolicy;

  /// If true, enable Cloud CDN for this BackendBucket.
  /// Note: This cannot be set to true when loadBalancingScheme is set to INTERNAL_MANAGED.
  final pulumi.Input<bool>? enableCdn;

  /// The value can only be INTERNAL_MANAGED for cross-region internal layer 7 load balancer.
  /// If loadBalancingScheme is not specified, the backend bucket can be used by classic global external load balancers, or global application external load balancers, or both.
  /// Important: CDN cannot be enabled (enableCdn cannot be set to true) when loadBalancingScheme is set to INTERNAL_MANAGED.
  /// Possible values are: `INTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<BackendBucketParams>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  BackendBucketArgs({
    required this.bucketName,
    this.cdnPolicy,
    this.compressionMode,
    this.customResponseHeaders,
    this.description,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.loadBalancingScheme,
    this.name,
    this.params,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = pulumi.Input.mapOptionalInputValue<
          BackendBucketCdnPolicy,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] = compressionModeValue;
    }
    final customResponseHeadersValue = customResponseHeaders;
    if (customResponseHeadersValue != null) {
      map['customResponseHeaders'] = customResponseHeadersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final edgeSecurityPolicyValue = edgeSecurityPolicy;
    if (edgeSecurityPolicyValue != null) {
      map['edgeSecurityPolicy'] = edgeSecurityPolicyValue;
    }
    final enableCdnValue = enableCdn;
    if (enableCdnValue != null) {
      map['enableCdn'] = enableCdnValue;
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = loadBalancingSchemeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<BackendBucketParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketArgs(
      bucketName: pulumi.Input.asInput<String>(map['bucketName']),
      cdnPolicy: pulumi.Input.asOptionalInput<BackendBucketCdnPolicy>(
          map['cdnPolicy']),
      compressionMode:
          pulumi.Input.asOptionalInput<String>(map['compressionMode']),
      customResponseHeaders: pulumi.Input.asOptionalInput<List<String>>(
          map['customResponseHeaders']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      edgeSecurityPolicy:
          pulumi.Input.asOptionalInput<String>(map['edgeSecurityPolicy']),
      enableCdn: pulumi.Input.asOptionalInput<bool>(map['enableCdn']),
      loadBalancingScheme:
          pulumi.Input.asOptionalInput<String>(map['loadBalancingScheme']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      params: pulumi.Input.asOptionalInput<BackendBucketParams>(map['params']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
