// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backend_bucket_cdn_policy/get_backend_bucket_cdn_policy.dart';
import '../get_backend_bucket_param/get_backend_bucket_param.dart';

/// Result data returned by getBackendBucket.
class GetBackendBucketResult {
  final String bucketName;
  final List<GetBackendBucketCdnPolicy> cdnPolicies;
  final String compressionMode;
  final String creationTimestamp;
  final List<String> customResponseHeaders;
  final String description;
  final String edgeSecurityPolicy;
  final bool enableCdn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String loadBalancingScheme;
  final String name;
  final List<GetBackendBucketParam> params;
  final String? project;
  final String selfLink;

  GetBackendBucketResult({
    required this.bucketName,
    required this.cdnPolicies,
    required this.compressionMode,
    required this.creationTimestamp,
    required this.customResponseHeaders,
    required this.description,
    required this.edgeSecurityPolicy,
    required this.enableCdn,
    required this.id,
    required this.loadBalancingScheme,
    required this.name,
    required this.params,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['cdnPolicies'] =
        Input.encodeList<GetBackendBucketCdnPolicy, Map<String, dynamic>>(
            cdnPolicies, (value) => value.toMap());
    map['compressionMode'] = compressionMode;
    map['creationTimestamp'] = creationTimestamp;
    map['customResponseHeaders'] = customResponseHeaders;
    map['description'] = description;
    map['edgeSecurityPolicy'] = edgeSecurityPolicy;
    map['enableCdn'] = enableCdn;
    map['id'] = id;
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['name'] = name;
    map['params'] =
        Input.encodeList<GetBackendBucketParam, Map<String, dynamic>>(
            params, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetBackendBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketResult(
      bucketName: map['bucketName'] as String,
      cdnPolicies: Input.decodeList<GetBackendBucketCdnPolicy>(
          map['cdnPolicies'],
          (value) => GetBackendBucketCdnPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      compressionMode: map['compressionMode'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      customResponseHeaders:
          (map['customResponseHeaders'] as List).cast<String>(),
      description: map['description'] as String,
      edgeSecurityPolicy: map['edgeSecurityPolicy'] as String,
      enableCdn: map['enableCdn'] as bool,
      id: map['id'] as String,
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      name: map['name'] as String,
      params: Input.decodeList<GetBackendBucketParam>(
          map['params'],
          (value) => GetBackendBucketParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
