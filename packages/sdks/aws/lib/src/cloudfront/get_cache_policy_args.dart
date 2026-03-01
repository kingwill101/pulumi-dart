// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_cache_policy_get_cache_policy_args_doc}
/// Arguments for getCachePolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_cache_policy_get_cache_policy_args_doc}
class GetCachePolicyArgs {
  /// Identifier for the cache policy.
  final pulumi.Input<String>? id;
  /// Unique name to identify the cache policy.
  final pulumi.Input<String>? name;

  /// Creates a new [GetCachePolicyArgs].
  /// [id] Identifier for the cache policy.
  /// [name] Unique name to identify the cache policy.
  GetCachePolicyArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetCachePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

