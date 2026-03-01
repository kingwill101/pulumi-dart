// ignore_for_file: unused_element, unnecessary_cast


/// The detailed result of a validation or rule checking.
class VerificationResultResponse {
  /// Message for clarification.
  final String? message;
  /// Indicates if the validation or rule checking is passed.
  final String result;
  /// The name of the verification rule.
  final String? verificationName;

  /// Creates a new [VerificationResultResponse].
  /// [message] Message for clarification.
  /// [result] Indicates if the validation or rule checking is passed.
  /// [verificationName] The name of the verification rule.
  VerificationResultResponse({
    this.message,
    required this.result,
    this.verificationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'result': result,
      'verificationName': ?verificationName,
    };
  }

  factory VerificationResultResponse.fromMap(Map<String, dynamic> map) {
    return VerificationResultResponse(
      message: map['message'] == null ? null : map['message'] as String,
      result: map['result'] as String,
      verificationName: map['verificationName'] == null ? null : map['verificationName'] as String,
    );
  }
}

