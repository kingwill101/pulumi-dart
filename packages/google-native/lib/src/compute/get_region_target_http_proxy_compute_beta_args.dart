// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_target_http_proxy_compute_beta_args_doc}
/// Arguments for getRegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_target_http_proxy_compute_beta_args_doc}
class GetRegionTargetHttpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetRegionTargetHttpProxyComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpProxy] Required.
  GetRegionTargetHttpProxyComputeBetaArgs({
    String? project,
    required String region,
    required String targetHttpProxy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        targetHttpProxy = pulumi.Input.asInput<String>(targetHttpProxy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetHttpProxy'] = targetHttpProxy;
    return map;
  }

  factory GetRegionTargetHttpProxyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetHttpProxy: map['targetHttpProxy'] as String,
    );
  }
}
