// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OriginAccessIdentity.
class OriginAccessIdentityArgs {
  /// An optional comment for the origin access identity.
  final Input<String>? comment;

  OriginAccessIdentityArgs({
    this.comment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    return map;
  }

  factory OriginAccessIdentityArgs.fromMap(Map<String, dynamic> map) {
    return OriginAccessIdentityArgs(
      comment: Input.asOptionalInput<String>(map['comment']),
    );
  }
}
