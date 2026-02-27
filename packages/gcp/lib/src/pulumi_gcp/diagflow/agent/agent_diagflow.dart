import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_diagflow_args.dart';

/// A Dialogflow agent is a virtual agent that handles conversations with your end-users. It is a natural language
/// understanding module that understands the nuances of human language. Dialogflow translates end-user text or audio
/// during a conversation to structured data that your apps and services can understand. You design and build a Dialogflow
/// agent to handle the types of conversations required for your system.
///
///
/// To get more information about Agent, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Agent Full
///
///
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/agent:Agent default {{project}}
/// ```
class AgentDiagflow extends pulumi.CustomResource {
  /// API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// different service endpoints for different API versions. However, bots connectors and webhook calls will follow
  /// the specified API version.
  /// * API_VERSION_V1: Legacy V1 API.
  /// * API_VERSION_V2: V2 API.
  /// * API_VERSION_V2_BETA_1: V2beta1 API.
  /// Possible values are: `API_VERSION_V1`, `API_VERSION_V2`, `API_VERSION_V2_BETA_1`.
  late final pulumi.Output<String> apiVersion;

  /// The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
  /// from the API will be shown in the [avatarUriBackend] field.
  late final pulumi.Output<String?> avatarUri;

  /// The URI of the agent's avatar as returned from the API. Output only. To provide an image URL for the agent avatar,
  /// the [avatarUri] field can be used.
  late final pulumi.Output<String> avatarUriBackend;

  /// To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// you can tune the machine learning classification threshold. If the returned score value is less than the threshold
  /// value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
  /// triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  late final pulumi.Output<double?> classificationThreshold;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  late final pulumi.Output<String> defaultLanguageCode;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;

  /// The name of this agent.
  late final pulumi.Output<String> displayName;

  /// Determines whether this agent should log conversation queries.
  late final pulumi.Output<bool?> enableLogging;

  /// Determines how intents are detected from user queries.
  /// * MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
  /// syntax and composite entities.
  /// * MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
  /// using @sys.any or very large developer entities.
  /// Possible values are: `MATCH_MODE_HYBRID`, `MATCH_MODE_ML_ONLY`.
  late final pulumi.Output<String> matchMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The list of all languages supported by this agent (except for the defaultLanguageCode).
  late final pulumi.Output<List<String>?> supportedLanguageCodes;

  /// The agent tier. If not specified, TIER_STANDARD is assumed.
  /// * TIER_STANDARD: Standard tier.
  /// * TIER_ENTERPRISE: Enterprise tier (Essentials).
  /// * TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
  /// NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between
  /// the the provider state and Dialogflow if the agent tier is changed outside of the provider.
  late final pulumi.Output<String?> tier;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  late final pulumi.Output<String> timeZone;

  AgentDiagflow(
    String name, {
    AgentDiagflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/agent:Agent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.avatarUri = registerOutput<String?>('avatarUri');
    this.avatarUriBackend = registerOutput<String>('avatarUriBackend');
    this.classificationThreshold =
        registerOutput<double?>('classificationThreshold');
    this.defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.matchMode = registerOutput<String>('matchMode');
    this.project = registerOutput<String>('project');
    this.supportedLanguageCodes =
        registerOutput<List<String>?>('supportedLanguageCodes');
    this.tier = registerOutput<String?>('tier');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
