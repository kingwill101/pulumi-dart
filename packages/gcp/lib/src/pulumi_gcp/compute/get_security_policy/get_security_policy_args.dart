// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs {
  /// The name of the security policy. Provide either this or a `self_link`.
  final Input<String>? name;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The self_link of the security policy. Provide either this or a `name`
  final Input<String>? selfLink;

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
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
