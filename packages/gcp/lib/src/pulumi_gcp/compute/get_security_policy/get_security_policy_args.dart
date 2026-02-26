// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityPolicy.
class GetSecurityPolicyArgs {
  /// The name of the security policy. Provide either this or a <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>.
  final Input<String>? name;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the security policy. Provide either this or a <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>
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
