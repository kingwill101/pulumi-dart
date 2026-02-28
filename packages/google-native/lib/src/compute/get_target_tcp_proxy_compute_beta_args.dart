// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_tcp_proxy_compute_beta_args_doc}
/// Arguments for getTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_tcp_proxy_compute_beta_args_doc}
class GetTargetTcpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetTargetTcpProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetTcpProxy] Required.
  GetTargetTcpProxyComputeBetaArgs({
    String? project,
    required String targetTcpProxy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        targetTcpProxy = pulumi.Input.asInput<String>(targetTcpProxy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetTcpProxy'] = targetTcpProxy;
    return map;
  }

  factory GetTargetTcpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetTcpProxy: map['targetTcpProxy'] as String,
    );
  }
}
