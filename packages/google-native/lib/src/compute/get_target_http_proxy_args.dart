// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_http_proxy_args_doc}
/// Arguments for getTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_http_proxy_args_doc}
class GetTargetHttpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetTargetHttpProxyArgs].
  /// [project] Optional.
  /// [targetHttpProxy] Required.
  GetTargetHttpProxyArgs({String? project, required String targetHttpProxy})
    : project = pulumi.Input.asOptionalInput<String>(project),
      targetHttpProxy = pulumi.Input.asInput<String>(targetHttpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetHttpProxy': targetHttpProxy,
    };
  }

  factory GetTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetHttpProxy: map['targetHttpProxy'] as String,
    );
  }
}
