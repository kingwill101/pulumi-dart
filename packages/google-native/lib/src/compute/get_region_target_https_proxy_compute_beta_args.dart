// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_target_https_proxy_compute_beta_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_target_https_proxy_compute_beta_args_doc}
class GetRegionTargetHttpsProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetRegionTargetHttpsProxyComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpsProxy] Required.
  GetRegionTargetHttpsProxyComputeBetaArgs({
    String? project,
    required String region,
    required String targetHttpsProxy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        targetHttpsProxy = pulumi.Input.asInput<String>(targetHttpsProxy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetHttpsProxy'] = targetHttpsProxy;
    return map;
  }

  factory GetRegionTargetHttpsProxyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetHttpsProxy: map['targetHttpsProxy'] as String,
    );
  }
}
