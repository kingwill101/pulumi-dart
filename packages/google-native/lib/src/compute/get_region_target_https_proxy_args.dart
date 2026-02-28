// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_target_https_proxy_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_target_https_proxy_args_doc}
class GetRegionTargetHttpsProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetRegionTargetHttpsProxyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpsProxy] Required.
  GetRegionTargetHttpsProxyArgs({
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

  factory GetRegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetHttpsProxy: map['targetHttpsProxy'] as String,
    );
  }
}

