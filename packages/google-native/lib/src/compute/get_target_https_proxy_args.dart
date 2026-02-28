// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_https_proxy_args_doc}
/// Arguments for getTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_https_proxy_args_doc}
class GetTargetHttpsProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetTargetHttpsProxyArgs].
  /// [project] Optional.
  /// [targetHttpsProxy] Required.
  GetTargetHttpsProxyArgs({
    String? project,
    required String targetHttpsProxy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        targetHttpsProxy = pulumi.Input.asInput<String>(targetHttpsProxy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetHttpsProxy'] = targetHttpsProxy;
    return map;
  }

  factory GetTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetHttpsProxy: map['targetHttpsProxy'] as String,
    );
  }
}
