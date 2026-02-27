// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_logic_config_generative_language_config/ai_logic_config_generative_language_config.dart';
import '../ai_logic_config_telemetry_config/ai_logic_config_telemetry_config.dart';

/// The set of arguments for AiLogicConfig.
class AiLogicConfigArgs {
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigGenerativeLanguageConfig>?
      generativeLanguageConfig;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration for telemetry.
  /// Telemetry is the collection of metrics, logs, and traces recorded by the
  /// Firebase AI Logic backend.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigTelemetryConfig>? telemetryConfig;

  AiLogicConfigArgs({
    this.generativeLanguageConfig,
    this.location,
    this.project,
    this.telemetryConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final generativeLanguageConfigValue = generativeLanguageConfig;
    if (generativeLanguageConfigValue != null) {
      map['generativeLanguageConfig'] = pulumi.Input.mapOptionalInputValue<
              AiLogicConfigGenerativeLanguageConfig, Map<String, dynamic>>(
          generativeLanguageConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final telemetryConfigValue = telemetryConfig;
    if (telemetryConfigValue != null) {
      map['telemetryConfig'] = pulumi.Input.mapOptionalInputValue<
          AiLogicConfigTelemetryConfig,
          Map<String, dynamic>>(telemetryConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AiLogicConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigArgs(
      generativeLanguageConfig:
          pulumi.Input.asOptionalInput<AiLogicConfigGenerativeLanguageConfig>(
              map['generativeLanguageConfig']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      telemetryConfig:
          pulumi.Input.asOptionalInput<AiLogicConfigTelemetryConfig>(
              map['telemetryConfig']),
    );
  }
}
