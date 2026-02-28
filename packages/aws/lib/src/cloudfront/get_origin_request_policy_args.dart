// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_origin_request_policy_get_origin_request_policy_args_doc}
/// Arguments for getOriginRequestPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_origin_request_policy_get_origin_request_policy_args_doc}
class GetOriginRequestPolicyArgs {
  /// Identifier for the origin request policy.
  final pulumi.Input<String>? id;

  /// Unique name to identify the origin request policy.
  final pulumi.Input<String>? name;

  /// Creates a new [GetOriginRequestPolicyArgs].
  /// [id] Identifier for the origin request policy.
  /// [name] Unique name to identify the origin request policy.
  GetOriginRequestPolicyArgs({
    String? id,
    String? name,
  })  : id = pulumi.Input.asOptionalInput<String>(id),
        name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GetOriginRequestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
