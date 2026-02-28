// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_ssl_proxy_compute_beta_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_ssl_proxy_compute_beta_args_doc}
class GetTargetSslProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  GetTargetSslProxyComputeBetaArgs({
    String? project,
    required String targetSslProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetSslProxy = pulumi.Input.asInput<String>(targetSslProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetTargetSslProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetSslProxy: map['targetSslProxy'] as String,
    );
  }
}

