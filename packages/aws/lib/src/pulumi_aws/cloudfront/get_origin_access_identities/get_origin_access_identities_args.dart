// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOriginAccessIdentities.
class GetOriginAccessIdentitiesArgs {
  /// Filter origin access identities by comment.
  final pulumi.Input<List<String>>? comments;

  GetOriginAccessIdentitiesArgs({
    this.comments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentsValue = comments;
    if (commentsValue != null) {
      map['comments'] = commentsValue;
    }
    return map;
  }

  factory GetOriginAccessIdentitiesArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentitiesArgs(
      comments: pulumi.Input.asOptionalInput<List<String>>(map['comments']),
    );
  }
}
