// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_details_response.dart';
import 'scope_response.dart';
import 'web_app_assessment_settings_response.dart';

/// WebApp assessment resource properties.
class WebAppAssessmentV3PropertiesResponse {
  /// Gets or sets the details of the assessment.
  final pulumi.Input<AssessmentDetailsResponse>? details;
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the scope of assessment.
  final pulumi.Input<ScopeResponse>? scope;
  /// Gets or sets the settings for the assessment.
  final pulumi.Input<WebAppAssessmentSettingsResponse>? settings;

  /// Creates a new [WebAppAssessmentV3PropertiesResponse].
  /// [details] Gets or sets the details of the assessment.
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  WebAppAssessmentV3PropertiesResponse({
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
      'settings': ?pulumi.Input.mapOptionalInputValue<WebAppAssessmentSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory WebAppAssessmentV3PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentV3PropertiesResponse(
      details: map['details'] == null ? null : (AssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>())).input(),
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : (map['fallbackMachineAssessmentArmId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scope: map['scope'] == null ? null : (ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      settings: map['settings'] == null ? null : (WebAppAssessmentSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

