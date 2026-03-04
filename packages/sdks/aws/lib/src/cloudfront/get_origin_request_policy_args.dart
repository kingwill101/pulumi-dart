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
  GetOriginRequestPolicyArgs({this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name};
  }

  factory GetOriginRequestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyArgs(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
