// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_ssl_policy_args_doc}
/// Arguments for getSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_ssl_policy_args_doc}
class GetSslPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetSslPolicyArgs].
  /// [project] Optional.
  /// [sslPolicy] Required.
  GetSslPolicyArgs({
    String? project,
    required String sslPolicy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        sslPolicy = pulumi.Input.asInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sslPolicy'] = sslPolicy;
    return map;
  }

  factory GetSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      sslPolicy: map['sslPolicy'] as String,
    );
  }
}
