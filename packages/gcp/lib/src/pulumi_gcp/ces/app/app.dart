import 'package:pulumi/pulumi.dart';
import '../app_audio_processing_config/app_audio_processing_config.dart';
import '../app_client_certificate_settings/app_client_certificate_settings.dart';
import '../app_data_store_settings/app_data_store_settings.dart';
import '../app_default_channel_profile/app_default_channel_profile.dart';
import '../app_evaluation_metrics_thresholds/app_evaluation_metrics_thresholds.dart';
import '../app_language_settings/app_language_settings.dart';
import '../app_logging_settings/app_logging_settings.dart';
import '../app_model_settings/app_model_settings.dart';
import '../app_time_zone_settings/app_time_zone_settings.dart';
import '../app_variable_declaration/app_variable_declaration.dart';
import 'app_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces App Basic
///
///
///
/// ### Ces App Ambient Sound Gcs Uri
///
///
///
///
/// ## Import
///
/// App can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, App can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default projects/{{project}}/locations/{{location}}/apps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default {{location}}/{{name}}
/// ```
class App extends CustomResource {
  /// The ID to use for the app, which will become the final component of
  /// the app's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app.
  late final Output<String> appId;

  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  late final Output<AppAudioProcessingConfig?> audioProcessingConfig;

  /// The default client certificate settings for the app.
  /// Structure is documented below.
  late final Output<AppClientCertificateSettings?> clientCertificateSettings;

  /// Timestamp when the app was created.
  late final Output<String> createTime;

  /// Data store related settings for the app.
  /// Structure is documented below.
  late final Output<AppDataStoreSettings?> dataStoreSettings;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  late final Output<AppDefaultChannelProfile?> defaultChannelProfile;

  /// Number of deployments in the app.
  late final Output<int> deploymentCount;

  /// Human-readable description of the app.
  late final Output<String?> description;

  /// Display name of the app.
  late final Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final Output<String> etag;

  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  late final Output<AppEvaluationMetricsThresholds?>
      evaluationMetricsThresholds;

  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  late final Output<String?> globalInstruction;

  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final Output<List<String>?> guardrails;

  /// Language settings of the app.
  /// Structure is documented below.
  late final Output<AppLanguageSettings?> languageSettings;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  late final Output<AppLoggingSettings?> loggingSettings;

  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  late final Output<Map<String, String>?> metadata;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  late final Output<AppModelSettings?> modelSettings;

  /// Identifier. The unique identifier of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}`
  late final Output<String> name;

  /// Whether the app is pinned in the app list.
  late final Output<bool?> pinned;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final Output<String?> rootAgent;

  /// TimeZone settings of the app.
  /// Structure is documented below.
  late final Output<AppTimeZoneSettings?> timeZoneSettings;

  /// Timestamp when the app was last updated.
  late final Output<String> updateTime;

  /// The declarations of the variables.
  /// Structure is documented below.
  late final Output<List<AppVariableDeclaration>?> variableDeclarations;

  App(
    String name, {
    AppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:ces/app:App',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.audioProcessingConfig =
        registerOutput<AppAudioProcessingConfig?>('audioProcessingConfig');
    this.clientCertificateSettings =
        registerOutput<AppClientCertificateSettings?>(
            'clientCertificateSettings');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreSettings =
        registerOutput<AppDataStoreSettings?>('dataStoreSettings');
    this.defaultChannelProfile =
        registerOutput<AppDefaultChannelProfile?>('defaultChannelProfile');
    this.deploymentCount = registerOutput<int>('deploymentCount');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.evaluationMetricsThresholds =
        registerOutput<AppEvaluationMetricsThresholds?>(
            'evaluationMetricsThresholds');
    this.globalInstruction = registerOutput<String?>('globalInstruction');
    this.guardrails = registerOutput<List<String>?>('guardrails');
    this.languageSettings =
        registerOutput<AppLanguageSettings?>('languageSettings');
    this.location = registerOutput<String>('location');
    this.loggingSettings =
        registerOutput<AppLoggingSettings?>('loggingSettings');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.modelSettings = registerOutput<AppModelSettings?>('modelSettings');
    this.name = registerOutput<String>('name');
    this.pinned = registerOutput<bool?>('pinned');
    this.project = registerOutput<String>('project');
    this.rootAgent = registerOutput<String?>('rootAgent');
    this.timeZoneSettings =
        registerOutput<AppTimeZoneSettings?>('timeZoneSettings');
    this.updateTime = registerOutput<String>('updateTime');
    this.variableDeclarations =
        registerOutput<List<AppVariableDeclaration>?>('variableDeclarations');
  }
}
