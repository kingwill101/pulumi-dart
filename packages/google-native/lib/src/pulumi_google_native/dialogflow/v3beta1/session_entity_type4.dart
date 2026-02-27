import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';
import 'session_entity_type_args4.dart';

/// Creates a session entity type.
class SessionEntityType4 extends CustomResource {
  late final Output<String> agentId;

  /// The collection of entities to override or supplement the custom entity type.
  late final Output<
      List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  late final Output<String> entityOverrideMode;
  late final Output<String> environmentId;
  late final Output<String> location;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> sessionId;

  SessionEntityType4(
    String name, {
    SessionEntityTypeArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:SessionEntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.entities = registerOutput<
            List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>>(
        'entities');
    this.entityOverrideMode = registerOutput<String>('entityOverrideMode');
    this.environmentId = registerOutput<String>('environmentId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sessionId = registerOutput<String>('sessionId');
  }
}
