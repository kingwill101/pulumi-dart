// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_config_generative_language_config.dart';
import 'ai_logic_config_telemetry_config.dart';

/// {@template pulumi_firebase_ai_logic_config_ai_logic_config_args_doc}
/// The set of arguments for AiLogicConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_ai_logic_config_ai_logic_config_args_doc}
class AiLogicConfigArgs {
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigGenerativeLanguageConfig>? generativeLanguageConfig;
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

  /// Creates a new [AiLogicConfigArgs].
  /// [generativeLanguageConfig] Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [telemetryConfig] Configuration for telemetry.
  AiLogicConfigArgs({
    AiLogicConfigGenerativeLanguageConfig? generativeLanguageConfig,
    String? location,
    String? project,
    AiLogicConfigTelemetryConfig? telemetryConfig,
  }) :
      generativeLanguageConfig = pulumi.Input.asOptionalInput<AiLogicConfigGenerativeLanguageConfig>(generativeLanguageConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      telemetryConfig = pulumi.Input.asOptionalInput<AiLogicConfigTelemetryConfig>(telemetryConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeLanguageConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigGenerativeLanguageConfig, Map<String, dynamic>>(generativeLanguageConfig, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
    };
  }

  factory AiLogicConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigArgs(
      generativeLanguageConfig: map['generativeLanguageConfig'] == null ? null : AiLogicConfigGenerativeLanguageConfig.fromMap((map['generativeLanguageConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      telemetryConfig: map['telemetryConfig'] == null ? null : AiLogicConfigTelemetryConfig.fromMap((map['telemetryConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

