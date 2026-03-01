// ignore_for_file: unused_element, unnecessary_cast


/// Extended location of the resource.
class A2ASharedDiskIRErrorDetailsResponse {
  /// The error code.
  final String errorCode;
  /// The error code enum.
  final String errorCodeEnum;
  /// The error message.
  final String errorMessage;
  /// The possible causes.
  final String possibleCauses;
  /// The recommended action.
  final String recommendedAction;

  /// Creates a new [A2ASharedDiskIRErrorDetailsResponse].
  /// [errorCode] The error code.
  /// [errorCodeEnum] The error code enum.
  /// [errorMessage] The error message.
  /// [possibleCauses] The possible causes.
  /// [recommendedAction] The recommended action.
  A2ASharedDiskIRErrorDetailsResponse({
    required this.errorCode,
    required this.errorCodeEnum,
    required this.errorMessage,
    required this.possibleCauses,
    required this.recommendedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorCodeEnum': errorCodeEnum,
      'errorMessage': errorMessage,
      'possibleCauses': possibleCauses,
      'recommendedAction': recommendedAction,
    };
  }

  factory A2ASharedDiskIRErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ASharedDiskIRErrorDetailsResponse(
      errorCode: map['errorCode'] as String,
      errorCodeEnum: map['errorCodeEnum'] as String,
      errorMessage: map['errorMessage'] as String,
      possibleCauses: map['possibleCauses'] as String,
      recommendedAction: map['recommendedAction'] as String,
    );
  }
}

