import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';
import 'session_entity_type_dialogflow_v3beta1_args.dart';

/// Creates a session entity type.
class SessionEntityTypeDialogflowV3beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// The collection of entities to override or supplement the custom entity type.
  late final pulumi
      .Output<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>>
      entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  late final pulumi.Output<String> entityOverrideMode;
  late final pulumi.Output<String> environmentId;
  late final pulumi.Output<String> location;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> sessionId;

  /// Creates a new [SessionEntityTypeDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SessionEntityTypeDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_session_entity_type_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SessionEntityTypeDialogflowV3beta1(
    String name, {
    SessionEntityTypeDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:SessionEntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
