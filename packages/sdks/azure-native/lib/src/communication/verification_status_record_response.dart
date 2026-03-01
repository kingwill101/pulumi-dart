// ignore_for_file: unused_element, unnecessary_cast


/// A class that represents a VerificationStatus record.
class VerificationStatusRecordResponse {
  /// Error code. This property will only be present if the status is UnableToVerify.
  final String errorCode;
  /// Status of the verification operation.
  final String status;

  /// Creates a new [VerificationStatusRecordResponse].
  /// [errorCode] Error code. This property will only be present if the status is UnableToVerify.
  /// [status] Status of the verification operation.
  VerificationStatusRecordResponse({
    required this.errorCode,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'status': status,
    };
  }

  factory VerificationStatusRecordResponse.fromMap(Map<String, dynamic> map) {
    return VerificationStatusRecordResponse(
      errorCode: map['errorCode'] as String,
      status: map['status'] as String,
    );
  }
}

