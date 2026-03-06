// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_web_acl_get_web_acl_args_doc}
/// Arguments for getWebAcl.
/// {@endtemplate}
/// {@macro pulumi_waf_get_web_acl_get_web_acl_args_doc}
class GetWebAclArgs {
  /// Name of the WAF Web ACL.
  final pulumi.Input<String> name;

  /// Creates a new [GetWebAclArgs].
  /// [name] Name of the WAF Web ACL.
  const GetWebAclArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWebAclArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

