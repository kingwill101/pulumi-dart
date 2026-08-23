// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Definition of enrollment properties.
class EnrollmentPropertiesResponse {
  /// Details of any errors encountered during Enrollment create or update.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// Provisioning state of the enrollment.
  final pulumi.Input<String> provisioningState;
  /// ARM resource identifier of the service group associated with this usage plan.
  final pulumi.Input<String> serviceGroupId;

  /// Creates a new [EnrollmentPropertiesResponse].
  /// [errorDetails] Details of any errors encountered during Enrollment create or update.
  /// [provisioningState] Provisioning state of the enrollment.
  /// [serviceGroupId] ARM resource identifier of the service group associated with this usage plan.
  const EnrollmentPropertiesResponse({
    required this.errorDetails,
    required this.provisioningState,
    required this.serviceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceGroupId': serviceGroupId,
    };
  }

  factory EnrollmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnrollmentPropertiesResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceGroupId: pulumi.Input.fromValue(map['serviceGroupId'] as String),
    );
  }
}
