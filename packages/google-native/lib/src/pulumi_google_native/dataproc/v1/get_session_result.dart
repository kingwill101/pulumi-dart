// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'environment_config_response3.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response2.dart';
import 'runtime_info_response.dart';
import 'session_state_history_response.dart';

/// Result data returned by getSession.
class GetSessionResult {
  /// The time when the session was created.
  final String createTime;

  /// The email address of the user who created the session.
  final String creator;

  /// Optional. Environment configuration for the session execution.
  final EnvironmentConfigResponse3 environmentConfig;

  /// Optional. Jupyter session config.
  final JupyterConfigResponse jupyterSession;

  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final Map<String, String> labels;

  /// The resource name of the session.
  final String name;

  /// Optional. Runtime configuration for the session execution.
  final RuntimeConfigResponse2 runtimeConfig;

  /// Runtime information about session execution.
  final RuntimeInfoResponse runtimeInfo;

  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  final String sessionTemplate;

  /// A state of the session.
  final String state;

  /// Historical state information for the session.
  final List<SessionStateHistoryResponse> stateHistory;

  /// Session state details, such as the failure description if the state is FAILED.
  final String stateMessage;

  /// The time when the session entered the current state.
  final String stateTime;

  /// Optional. The email address of the user who owns the session.
  final String user;

  /// A session UUID (Unique Universal Identifier). The service generates this value when it creates the session.
  final String uuid;

  GetSessionResult({
    required this.createTime,
    required this.creator,
    required this.environmentConfig,
    required this.jupyterSession,
    required this.labels,
    required this.name,
    required this.runtimeConfig,
    required this.runtimeInfo,
    required this.sessionTemplate,
    required this.state,
    required this.stateHistory,
    required this.stateMessage,
    required this.stateTime,
    required this.user,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['environmentConfig'] = environmentConfig.toMap();
    map['jupyterSession'] = jupyterSession.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['runtimeConfig'] = runtimeConfig.toMap();
    map['runtimeInfo'] = runtimeInfo.toMap();
    map['sessionTemplate'] = sessionTemplate;
    map['state'] = state;
    map['stateHistory'] =
        Input.encodeList<SessionStateHistoryResponse, Map<String, dynamic>>(
            stateHistory, (value) => value.toMap());
    map['stateMessage'] = stateMessage;
    map['stateTime'] = stateTime;
    map['user'] = user;
    map['uuid'] = uuid;
    return map;
  }

  factory GetSessionResult.fromMap(Map<String, dynamic> map) {
    return GetSessionResult(
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      environmentConfig: EnvironmentConfigResponse3.fromMap(
          (map['environmentConfig'] as Map).cast<String, dynamic>()),
      jupyterSession: JupyterConfigResponse.fromMap(
          (map['jupyterSession'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      runtimeConfig: RuntimeConfigResponse2.fromMap(
          (map['runtimeConfig'] as Map).cast<String, dynamic>()),
      runtimeInfo: RuntimeInfoResponse.fromMap(
          (map['runtimeInfo'] as Map).cast<String, dynamic>()),
      sessionTemplate: map['sessionTemplate'] as String,
      state: map['state'] as String,
      stateHistory: Input.decodeList<SessionStateHistoryResponse>(
          map['stateHistory'],
          (value) => SessionStateHistoryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      stateMessage: map['stateMessage'] as String,
      stateTime: map['stateTime'] as String,
      user: map['user'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
