// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Definition of usage plan properties.
class UsagePlanPropertiesResponse {
  /// Details of any errors encountered during Usage Plan create or update.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// The type of the usage plan.
  final pulumi.Input<String>? planType;
  /// Provisioning state of the usage plan.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [UsagePlanPropertiesResponse].
  /// [errorDetails] Details of any errors encountered during Usage Plan create or update.
  /// [planType] The type of the usage plan.
  /// [provisioningState] Provisioning state of the usage plan.
  const UsagePlanPropertiesResponse({
    required this.errorDetails,
    this.planType,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'planType': ?planType,
      'provisioningState': provisioningState,
    };
  }

  factory UsagePlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UsagePlanPropertiesResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      planType: (() { final guardedValue = map['planType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
