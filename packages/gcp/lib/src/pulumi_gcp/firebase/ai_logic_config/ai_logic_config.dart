import 'package:pulumi/pulumi.dart';
import '../ai_logic_config_generative_language_config/ai_logic_config_generative_language_config.dart';
import '../ai_logic_config_telemetry_config/ai_logic_config_telemetry_config.dart';
import 'ai_logic_config_args.dart';

/// Configuration for Firebase AI Logic.
///
/// To get more information about Config, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/ai-logic/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/ai-logic)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `generative_language_config.api_key_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Firebaseailogic Config Basic
///
///
///
/// ### Firebaseailogic Config Full
///
///
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/config`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default projects/{{project}}/locations/{{location}}/config
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default {{location}}
/// ```
class AiLogicConfig extends CustomResource {
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  late final Output<AiLogicConfigGenerativeLanguageConfig?>
      generativeLanguageConfig;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. The resource name of the config.
  /// Format: projects/{project}/locations/{location}/config
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configuration for telemetry.
  /// Telemetry is the collection of metrics, logs, and traces recorded by the
  /// Firebase AI Logic backend.
  /// Structure is documented below.
  late final Output<AiLogicConfigTelemetryConfig?> telemetryConfig;

  AiLogicConfig(
    String name, {
    AiLogicConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicConfig:AiLogicConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.generativeLanguageConfig =
        registerOutput<AiLogicConfigGenerativeLanguageConfig?>(
            'generativeLanguageConfig');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.telemetryConfig =
        registerOutput<AiLogicConfigTelemetryConfig?>('telemetryConfig');
  }
}
