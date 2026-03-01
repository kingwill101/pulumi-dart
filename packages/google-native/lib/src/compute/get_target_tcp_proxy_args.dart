// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_tcp_proxy_args_doc}
/// Arguments for getTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_tcp_proxy_args_doc}
class GetTargetTcpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetTargetTcpProxyArgs].
  /// [project] Optional.
  /// [targetTcpProxy] Required.
  GetTargetTcpProxyArgs({String? project, required String targetTcpProxy})
    : project = pulumi.Input.asOptionalInput<String>(project),
      targetTcpProxy = pulumi.Input.asInput<String>(targetTcpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetTcpProxy: map['targetTcpProxy'] as String,
    );
  }
}
