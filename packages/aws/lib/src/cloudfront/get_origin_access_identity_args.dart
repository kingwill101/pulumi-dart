// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_origin_access_identity_get_origin_access_identity_args_doc}
/// Arguments for getOriginAccessIdentity.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_origin_access_identity_get_origin_access_identity_args_doc}
class GetOriginAccessIdentityArgs {
  /// The identifier for the origin access identity. For example: `E1ZAKK699EOLAL`.
  final pulumi.Input<String> id;

  /// Creates a new [GetOriginAccessIdentityArgs].
  /// [id] The identifier for the origin access identity. For example: `E1ZAKK699EOLAL`.
  GetOriginAccessIdentityArgs({
    required String id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetOriginAccessIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentityArgs(
      id: map['id'] as String,
    );
  }
}

