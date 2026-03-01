// ignore_for_file: unused_element, unnecessary_cast


/// Descriptor for what needs to be reviewed
class AccessReviewReviewerResponse {
  /// The id of the reviewer(user/servicePrincipal)
  final String? principalId;
  /// The identity type : user/servicePrincipal
  final String principalType;

  /// Creates a new [AccessReviewReviewerResponse].
  /// [principalId] The id of the reviewer(user/servicePrincipal)
  /// [principalType] The identity type : user/servicePrincipal
  AccessReviewReviewerResponse({
    this.principalId,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'principalType': principalType,
    };
  }

  factory AccessReviewReviewerResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewReviewerResponse(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      principalType: map['principalType'] as String,
    );
  }
}

