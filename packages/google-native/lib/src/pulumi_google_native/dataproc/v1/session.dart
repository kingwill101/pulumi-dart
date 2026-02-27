import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_config_response3.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response2.dart';
import 'runtime_info_response.dart';
import 'session_args.dart';
import 'session_state_history_response.dart';

/// Create an interactive session asynchronously.
class Session extends CustomResource {
  /// The time when the session was created.
  late final Output<String> createTime;

  /// The email address of the user who created the session.
  late final Output<String> creator;

  /// Optional. Environment configuration for the session execution.
  late final Output<EnvironmentConfigResponse3> environmentConfig;

  /// Optional. Jupyter session config.
  late final Output<JupyterConfigResponse> jupyterSession;

  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the session.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Optional. Runtime configuration for the session execution.
  late final Output<RuntimeConfigResponse2> runtimeConfig;

  /// Runtime information about session execution.
  late final Output<RuntimeInfoResponse> runtimeInfo;

  /// Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  late final Output<String> sessionId;

  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  late final Output<String> sessionTemplate;

  /// A state of the session.
  late final Output<String> state;

  /// Historical state information for the session.
  late final Output<List<SessionStateHistoryResponse>> stateHistory;

  /// Session state details, such as the failure description if the state is FAILED.
  late final Output<String> stateMessage;

  /// The time when the session entered the current state.
  late final Output<String> stateTime;

  /// Optional. The email address of the user who owns the session.
  late final Output<String> user;

  /// A session UUID (Unique Universal Identifier). The service generates this value when it creates the session.
  late final Output<String> uuid;

  Session(
    String name, {
    SessionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:Session',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.environmentConfig =
        registerOutput<EnvironmentConfigResponse3>('environmentConfig');
    this.jupyterSession =
        registerOutput<JupyterConfigResponse>('jupyterSession');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.runtimeConfig =
        registerOutput<RuntimeConfigResponse2>('runtimeConfig');
    this.runtimeInfo = registerOutput<RuntimeInfoResponse>('runtimeInfo');
    this.sessionId = registerOutput<String>('sessionId');
    this.sessionTemplate = registerOutput<String>('sessionTemplate');
    this.state = registerOutput<String>('state');
    this.stateHistory =
        registerOutput<List<SessionStateHistoryResponse>>('stateHistory');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.stateTime = registerOutput<String>('stateTime');
    this.user = registerOutput<String>('user');
    this.uuid = registerOutput<String>('uuid');
  }
}
