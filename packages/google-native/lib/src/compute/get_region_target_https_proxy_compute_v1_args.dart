// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_target_https_proxy_compute_v1_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_target_https_proxy_compute_v1_args_doc}
class GetRegionTargetHttpsProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetRegionTargetHttpsProxyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpsProxy] Required.
  GetRegionTargetHttpsProxyComputeV1Args({
    String? project,
    required String region,
    required String targetHttpsProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      targetHttpsProxy = pulumi.Input.asInput<String>(targetHttpsProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetHttpsProxy': targetHttpsProxy,
    };
  }

  factory GetRegionTargetHttpsProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetHttpsProxy: map['targetHttpsProxy'] as String,
    );
  }
}

