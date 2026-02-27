import 'package:pulumi/pulumi.dart' as pulumi;
import '../assistant_customer_policy/assistant_customer_policy.dart';
import '../assistant_generation_config/assistant_generation_config.dart';
import 'assistant_args.dart';

/// Assistant
///
///
/// To get more information about Assistant, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1#assistantservice)
///
/// ## Example Usage
///
/// ### Discoveryengine Assistant Basic
///
///
///
///
/// ## Import
///
/// Assistant can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/assistants/{{assistant_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}`
///
/// When using the `pulumi import` command, Assistant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/assistants/{{assistant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default {{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}
/// ```
class Assistant extends pulumi.CustomResource {
  /// The unique id of the assistant.
  late final pulumi.Output<String> assistantId;

  /// The unique id of the collection.
  late final pulumi.Output<String> collectionId;

  /// Customer policy for the assistant.
  /// Structure is documented below.
  late final pulumi.Output<AssistantCustomerPolicy?> customerPolicy;

  /// Description for additional information. Expected to be shown on the
  /// configuration UI, not to the users of the assistant.
  late final pulumi.Output<String?> description;

  /// The assistant display name.
  /// It must be a UTF-8 encoded string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;

  /// The unique id of the engine.
  late final pulumi.Output<String> engineId;

  /// Configuration for the generation of the assistant response.
  /// Structure is documented below.
  late final pulumi.Output<AssistantGenerationConfig?> generationConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// Resource name of the assistant.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// It must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of web grounding to use.
  /// The supported values: 'WEB_GROUNDING_TYPE_DISABLED', 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH', 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
  late final pulumi.Output<String?> webGroundingType;

  Assistant(
    String name, {
    AssistantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/assistant:Assistant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assistantId = registerOutput<String>('assistantId');
    this.collectionId = registerOutput<String>('collectionId');
    this.customerPolicy =
        registerOutput<AssistantCustomerPolicy?>('customerPolicy');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.generationConfig =
        registerOutput<AssistantGenerationConfig?>('generationConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.webGroundingType = registerOutput<String?>('webGroundingType');
  }
}
