import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_entity_type_entity_response.dart';
import 'session_entity_type_args.dart';

/// Creates a session entity type. If the specified session entity type already exists, overrides the session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
/// Auto-naming is currently not supported for this resource.
class SessionEntityType extends pulumi.CustomResource {
  /// The collection of entities associated with this session entity type.
  late final pulumi.Output<List<GoogleCloudDialogflowV2EntityTypeEntityResponse>> entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  late final pulumi.Output<String> entityOverrideMode;
  late final pulumi.Output<String> environmentId;
  late final pulumi.Output<String> location;
  /// The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> sessionId;
  late final pulumi.Output<String> userId;

  /// Creates a new [SessionEntityType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SessionEntityType]. {@macro pulumi_dialogflow_v2_session_entity_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SessionEntityType(
    String name, {
    SessionEntityTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:SessionEntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entities = registerOutput<List<GoogleCloudDialogflowV2EntityTypeEntityResponse>>('entities');
    this.entityOverrideMode = registerOutput<String>('entityOverrideMode');
    this.environmentId = registerOutput<String>('environmentId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sessionId = registerOutput<String>('sessionId');
    this.userId = registerOutput<String>('userId');
  }
}
