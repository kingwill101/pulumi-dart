// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OriginAccessIdentity.
class OriginAccessIdentityArgs {
  /// An optional comment for the origin access identity.
  final pulumi.Input<String>? comment;

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
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
    );
  }
}
