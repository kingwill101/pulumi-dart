// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope.dart';
import 'web_app_assessment_settings.dart';

/// WebApp assessment resource properties.
class WebAppAssessmentV3Properties {
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;

  /// Gets or sets the scope of assessment.
  final pulumi.Input<Scope>? scope;

  /// Gets or sets the settings for the assessment.
  final pulumi.Input<WebAppAssessmentSettings>? settings;

  /// Creates a new [WebAppAssessmentV3Properties].
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  WebAppAssessmentV3Properties({
    this.fallbackMachineAssessmentArmId,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(
        scope,
        (value) => value.toMap(),
      ),
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            WebAppAssessmentSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
    };
  }

  factory WebAppAssessmentV3Properties.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentV3Properties(
      fallbackMachineAssessmentArmId: (() {
        final guardedValue = map['fallbackMachineAssessmentArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Scope.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAppAssessmentSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
