import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_entity_response.dart';
import 'session_entity_type_args3.dart';

/// Creates a session entity type.
class SessionEntityType3 extends CustomResource {
  late final Output<String> agentId;

  /// The collection of entities to override or supplement the custom entity type.
  late final Output<List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>>
      entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  late final Output<String> entityOverrideMode;
  late final Output<String> environmentId;
  late final Output<String> location;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> sessionId;

  SessionEntityType3(
    String name, {
    SessionEntityTypeArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:SessionEntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = Output.createUnknown<String>();
    this.entities = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>>();
    this.entityOverrideMode = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sessionId = Output.createUnknown<String>();
  }
}
