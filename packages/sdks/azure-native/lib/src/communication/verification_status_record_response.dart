// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class that represents a VerificationStatus record.
class VerificationStatusRecordResponse {
  /// Error code. This property will only be present if the status is UnableToVerify.
  final pulumi.Input<String> errorCode;
  /// Status of the verification operation.
  final pulumi.Input<String> status;

  /// Creates a new [VerificationStatusRecordResponse].
  /// [errorCode] Error code. This property will only be present if the status is UnableToVerify.
  /// [status] Status of the verification operation.
  const VerificationStatusRecordResponse({
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
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
