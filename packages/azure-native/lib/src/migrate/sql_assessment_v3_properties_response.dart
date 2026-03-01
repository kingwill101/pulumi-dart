// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_details_response.dart';
import 'scope_response.dart';
import 'sql_assessment_settings_response.dart';

/// SQL assessment properties class.
class SqlAssessmentV3PropertiesResponse {
  /// Gets or sets the details of the assessment.
  final AssessmentDetailsResponse? details;
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final String? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final String provisioningState;
  /// Gets or sets the scope of assessment.
  final ScopeResponse? scope;
  /// Gets or sets the settings for the assessment.
  final SqlAssessmentSettingsResponse? settings;

  /// Creates a new [SqlAssessmentV3PropertiesResponse].
  /// [details] Gets or sets the details of the assessment.
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  SqlAssessmentV3PropertiesResponse({
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

  factory SqlAssessmentV3PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAssessmentV3PropertiesResponse(
      details: map['details'] == null ? null : AssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>()),
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : SqlAssessmentSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

