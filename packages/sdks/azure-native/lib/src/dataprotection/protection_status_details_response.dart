// ignore_for_file: unused_element, unnecessary_cast

import 'user_facing_error_response.dart';

/// Protection status details
class ProtectionStatusDetailsResponse {
  /// Specifies the protection status error of the resource
  final UserFacingErrorResponse? errorDetails;
  /// Specifies the protection status of the resource
  final String? status;

  /// Creates a new [ProtectionStatusDetailsResponse].
  /// [errorDetails] Specifies the protection status error of the resource
  /// [status] Specifies the protection status of the resource
  ProtectionStatusDetailsResponse({
    this.errorDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails == null ? null : errorDetails!.toMap(),
      'status': ?status,
    };
  }

  factory ProtectionStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProtectionStatusDetailsResponse(
      errorDetails: map['errorDetails'] == null ? null : UserFacingErrorResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

