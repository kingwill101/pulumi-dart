// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Descriptor for what needs to be reviewed
class AccessReviewReviewer {
  /// The id of the reviewer(user/servicePrincipal)
  final pulumi.Input<String>? principalId;

  /// Creates a new [AccessReviewReviewer].
  /// [principalId] The id of the reviewer(user/servicePrincipal)
  AccessReviewReviewer({
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
    };
  }

  factory AccessReviewReviewer.fromMap(Map<String, dynamic> map) {
    return AccessReviewReviewer(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

