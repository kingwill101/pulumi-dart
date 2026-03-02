// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_response_headers_policy_get_response_headers_policy_args_doc}
/// Arguments for getResponseHeadersPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_response_headers_policy_get_response_headers_policy_args_doc}
class GetResponseHeadersPolicyArgs {
  /// Identifier for the response headers policy.
  final pulumi.Input<String>? id;
  /// Unique name to identify the response headers policy.
  final pulumi.Input<String>? name;

  /// Creates a new [GetResponseHeadersPolicyArgs].
  /// [id] Identifier for the response headers policy.
  /// [name] Unique name to identify the response headers policy.
  GetResponseHeadersPolicyArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetResponseHeadersPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

