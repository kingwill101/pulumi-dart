import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_entity_type_entity_response.dart';
import 'session_entity_type_args2.dart';

/// Creates a session entity type. If the specified session entity type already exists, overrides the session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
/// Auto-naming is currently not supported for this resource.
class SessionEntityType2 extends CustomResource {
  /// The collection of entities associated with this session entity type.
  late final Output<List<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>>
      entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  late final Output<String> entityOverrideMode;
  late final Output<String> environmentId;
  late final Output<String> location;

  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> sessionId;
  late final Output<String> userId;

  SessionEntityType2(
    String name, {
    SessionEntityTypeArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:SessionEntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.entities = registerOutput<
        List<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>>('entities');
    this.entityOverrideMode = registerOutput<String>('entityOverrideMode');
    this.environmentId = registerOutput<String>('environmentId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sessionId = registerOutput<String>('sessionId');
    this.userId = registerOutput<String>('userId');
  }
}
