// ignore_for_file: unused_element, unnecessary_cast


/// Descriptor for what needs to be reviewed
class AccessReviewReviewer {
  /// The id of the reviewer(user/servicePrincipal)
  final String? principalId;

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
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

