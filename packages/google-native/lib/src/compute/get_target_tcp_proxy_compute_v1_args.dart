// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_tcp_proxy_compute_v1_args_doc}
/// Arguments for getTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_tcp_proxy_compute_v1_args_doc}
class GetTargetTcpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetTargetTcpProxyComputeV1Args].
  /// [project] Optional.
  /// [targetTcpProxy] Required.
  GetTargetTcpProxyComputeV1Args({
    String? project,
    required String targetTcpProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetTcpProxy = pulumi.Input.asInput<String>(targetTcpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetTargetTcpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      targetTcpProxy: map['targetTcpProxy'] as String,
    );
  }
}

