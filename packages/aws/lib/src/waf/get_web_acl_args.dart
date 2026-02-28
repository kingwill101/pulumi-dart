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
  GetWebAclArgs({
    required String name,
  }) : name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetWebAclArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs(
      name: map['name'] as String,
    );
  }
}
