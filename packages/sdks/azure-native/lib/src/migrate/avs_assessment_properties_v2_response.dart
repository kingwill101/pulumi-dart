// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_details_response.dart';
import 'avs_assessment_settings_response.dart';
import 'scope_response.dart';

/// Assessment properties class.
class AvsAssessmentPropertiesV2Response {
  /// Gets or sets the details of the assessment.
  final AssessmentDetailsResponse? details;
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final String? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final String provisioningState;
  /// Gets or sets the scope of assessment.
  final ScopeResponse? scope;
  /// Gets or sets the settings for the assessment.
  final AvsAssessmentSettingsResponse? settings;

  /// Creates a new [AvsAssessmentPropertiesV2Response].
  /// [details] Gets or sets the details of the assessment.
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  AvsAssessmentPropertiesV2Response({
    this.details,
    this.fallbackMachineAssessmentArmId,
    required this.provisioningState,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : details!.toMap(),
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'provisioningState': provisioningState,
      'scope': ?scope == null ? null : scope!.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory AvsAssessmentPropertiesV2Response.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentPropertiesV2Response(
      details: map['details'] == null ? null : AssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>()),
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : AvsAssessmentSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

