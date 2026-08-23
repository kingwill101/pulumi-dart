// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_details_response.dart';
import 'avs_assessment_settings_response.dart';
import 'scope_response.dart';

/// Assessment properties class.
class AvsAssessmentPropertiesV2Response {
  /// Gets or sets the details of the assessment.
  final pulumi.Input<AssessmentDetailsResponse>? details;
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the scope of assessment.
  final pulumi.Input<ScopeResponse>? scope;
  /// Gets or sets the settings for the assessment.
  final pulumi.Input<AvsAssessmentSettingsResponse>? settings;

  /// Creates a new [AvsAssessmentPropertiesV2Response].
  /// [details] Gets or sets the details of the assessment.
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  const AvsAssessmentPropertiesV2Response({
    this.details,
    this.fallbackMachineAssessmentArmId,
    required this.provisioningState,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<AssessmentDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'provisioningState': provisioningState,
      'scope': ?pulumi.Input.mapOptionalInputValue<ScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<AvsAssessmentSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory AvsAssessmentPropertiesV2Response.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentPropertiesV2Response(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fallbackMachineAssessmentArmId: (() { final guardedValue = map['fallbackMachineAssessmentArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvsAssessmentSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
