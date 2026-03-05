// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_origin_access_identity_origin_access_identity_args_doc}
/// The set of arguments for OriginAccessIdentity.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_origin_access_identity_origin_access_identity_args_doc}
class OriginAccessIdentityArgs {
  /// An optional comment for the origin access identity.
  final pulumi.Input<String>? comment;

  /// Creates a new [OriginAccessIdentityArgs].
  /// [comment] An optional comment for the origin access identity.
  OriginAccessIdentityArgs({
    this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
    };
  }

  factory OriginAccessIdentityArgs.fromMap(Map<String, dynamic> map) {
    return OriginAccessIdentityArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

