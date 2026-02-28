// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_security_policy_get_security_policy_args_doc}
/// Arguments for getSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_security_policy_get_security_policy_args_doc}
class GetSecurityPolicyArgs {
  /// The name of the security policy. Provide either this or a `self_link`.
  final pulumi.Input<String>? name;
  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The self_link of the security policy. Provide either this or a `name`
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetSecurityPolicyArgs].
  /// [name] The name of the security policy. Provide either this or a `self_link`.
  /// [project] The project in which the resource belongs. If it is not provided, the provider project is used.
  /// [selfLink] The self_link of the security policy. Provide either this or a `name`
  GetSecurityPolicyArgs({
    String? name,
    String? project,
    String? selfLink,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
    );
  }
}

