// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs {
  /// The name of the security policy. Provide either this or a `self_link`.
  final pulumi.Input<String>? name;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The self_link of the security policy. Provide either this or a `name`
  final pulumi.Input<String>? selfLink;

  GetSecurityPolicyArgs({
    this.name,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    return map;
  }

  factory GetSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
