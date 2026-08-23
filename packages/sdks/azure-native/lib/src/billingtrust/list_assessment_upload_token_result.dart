// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAssessmentUploadToken.
class ListAssessmentUploadTokenResult {
  /// The time-bound, principal-bound upload token
  final String token;

  /// Creates a new [ListAssessmentUploadTokenResult].
  /// [token] The time-bound, principal-bound upload token
  const ListAssessmentUploadTokenResult({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory ListAssessmentUploadTokenResult.fromMap(Map<String, dynamic> map) {
    return ListAssessmentUploadTokenResult(
      token: map['token'] as String,
    );
  }
}
