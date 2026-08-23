// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_origin_access_identities_get_origin_access_identities_args_doc}
/// Arguments for getOriginAccessIdentities.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_origin_access_identities_get_origin_access_identities_args_doc}
class GetOriginAccessIdentitiesArgs {
  /// Filter origin access identities by comment.
  final pulumi.Input<List<String>>? comments;

  /// Creates a new [GetOriginAccessIdentitiesArgs].
  /// [comments] Filter origin access identities by comment.
  const GetOriginAccessIdentitiesArgs({
    this.comments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
    };
  }

  factory GetOriginAccessIdentitiesArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentitiesArgs(
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
