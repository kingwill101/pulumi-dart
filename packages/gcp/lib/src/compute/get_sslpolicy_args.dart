// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_sslpolicy_get_sslpolicy_args_doc}
/// Arguments for getSSLPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_sslpolicy_get_sslpolicy_args_doc}
class GetSSLPolicyArgs {
  /// The name of the SSL Policy.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSSLPolicyArgs].
  /// [name] The name of the SSL Policy.
  /// [project] The ID of the project in which the resource belongs. If it
  GetSSLPolicyArgs({
    required String name,
    String? project,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetSSLPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSSLPolicyArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
