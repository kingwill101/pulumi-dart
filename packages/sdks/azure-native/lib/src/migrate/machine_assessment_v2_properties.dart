// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_assessment_settings.dart';
import 'scope.dart';

/// Assessment properties class.
class MachineAssessmentV2Properties {
  /// Gets or sets the scope of assessment.
  final pulumi.Input<Scope>? scope;
  /// Gets or sets the settings for the assessment.
  final pulumi.Input<MachineAssessmentSettings>? settings;

  /// Creates a new [MachineAssessmentV2Properties].
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  MachineAssessmentV2Properties({
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<MachineAssessmentSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory MachineAssessmentV2Properties.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentV2Properties(
      scope: map['scope'] == null ? null : (Scope.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      settings: map['settings'] == null ? null : (MachineAssessmentSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

