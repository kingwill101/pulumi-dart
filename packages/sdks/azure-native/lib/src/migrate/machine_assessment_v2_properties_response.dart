// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_details_response.dart';
import 'machine_assessment_settings_response.dart';
import 'scope_response.dart';

/// Assessment properties class.
class MachineAssessmentV2PropertiesResponse {
  /// Gets or sets the details of the assessment.
  final AssessmentDetailsResponse? details;
  /// The status of the last operation.
  final String provisioningState;
  /// Gets or sets the scope of assessment.
  final ScopeResponse? scope;
  /// Gets or sets the settings for the assessment.
  final MachineAssessmentSettingsResponse? settings;

  /// Creates a new [MachineAssessmentV2PropertiesResponse].
  /// [details] Gets or sets the details of the assessment.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  MachineAssessmentV2PropertiesResponse({
    this.details,
    required this.provisioningState,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : details!.toMap(),
      'provisioningState': provisioningState,
      'scope': ?scope == null ? null : scope!.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory MachineAssessmentV2PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentV2PropertiesResponse(
      details: map['details'] == null ? null : AssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : MachineAssessmentSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

