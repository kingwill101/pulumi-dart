// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_http_proxy_compute_beta_args_doc}
/// Arguments for getTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_http_proxy_compute_beta_args_doc}
class GetTargetHttpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetTargetHttpProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetHttpProxy] Required.
  GetTargetHttpProxyComputeBetaArgs({
    String? project,
    required String targetHttpProxy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        targetHttpProxy = pulumi.Input.asInput<String>(targetHttpProxy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetHttpProxy'] = targetHttpProxy;
    return map;
  }

  factory GetTargetHttpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetHttpProxy: map['targetHttpProxy'] as String,
    );
  }
}
