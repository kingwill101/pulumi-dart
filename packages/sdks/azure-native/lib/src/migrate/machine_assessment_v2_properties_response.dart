// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_details_response.dart';
import 'machine_assessment_settings_response.dart';
import 'scope_response.dart';

/// Assessment properties class.
class MachineAssessmentV2PropertiesResponse {
  /// Gets or sets the details of the assessment.
  final pulumi.Input<AssessmentDetailsResponse?>? details;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the scope of assessment.
  final pulumi.Input<ScopeResponse?>? scope;
  /// Gets or sets the settings for the assessment.
  final pulumi.Input<MachineAssessmentSettingsResponse?>? settings;

  /// Creates a new [MachineAssessmentV2PropertiesResponse].
  /// [details] Gets or sets the details of the assessment.
  /// [provisioningState] The status of the last operation.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  const MachineAssessmentV2PropertiesResponse({
    this.details,
    required this.provisioningState,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<AssessmentDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'scope': ?pulumi.Input.mapOptionalInputValue<ScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<MachineAssessmentSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory MachineAssessmentV2PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentV2PropertiesResponse(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineAssessmentSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
