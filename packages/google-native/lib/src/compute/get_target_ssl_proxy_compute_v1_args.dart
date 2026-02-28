// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_ssl_proxy_compute_v1_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_ssl_proxy_compute_v1_args_doc}
class GetTargetSslProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyComputeV1Args].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  GetTargetSslProxyComputeV1Args({
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

  factory GetTargetSslProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      targetSslProxy: map['targetSslProxy'] as String,
    );
  }
}

