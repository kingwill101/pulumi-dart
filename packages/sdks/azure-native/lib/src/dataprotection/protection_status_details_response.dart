// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_facing_error_response.dart';

/// Protection status details
class ProtectionStatusDetailsResponse {
  /// Specifies the protection status error of the resource
  final pulumi.Input<UserFacingErrorResponse>? errorDetails;
  /// Specifies the protection status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [ProtectionStatusDetailsResponse].
  /// [errorDetails] Specifies the protection status error of the resource
  /// [status] Specifies the protection status of the resource
  ProtectionStatusDetailsResponse({
    this.errorDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<UserFacingErrorResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ProtectionStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProtectionStatusDetailsResponse(
      errorDetails: map['errorDetails'] == null ? null : (UserFacingErrorResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

