// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'jupyter_config.dart';
import 'runtime_config.dart';

/// {@template pulumi_dataproc_v1_session_args_doc}
/// The set of arguments for Session.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_session_args_doc}
class SessionArgs {
  /// Optional. Environment configuration for the session execution.
  final pulumi.Input<EnvironmentConfig>? environmentConfig;
  /// Optional. Jupyter session config.
  final pulumi.Input<JupyterConfig>? jupyterSession;
  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the session.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. Runtime configuration for the session execution.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;
  /// Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  final pulumi.Input<String> sessionId;
  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  final pulumi.Input<String>? sessionTemplate;
  /// Optional. The email address of the user who owns the session.
  final pulumi.Input<String>? user;

  /// Creates a new [SessionArgs].
  /// [environmentConfig] Optional. Environment configuration for the session execution.
  /// [jupyterSession] Optional. Jupyter session config.
  /// [labels] Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  /// [location] Optional.
  /// [name] The resource name of the session.
  /// [project] Optional.
  /// [requestId] Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [runtimeConfig] Optional. Runtime configuration for the session execution.
  /// [sessionId] Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  /// [sessionTemplate] Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  /// [user] Optional. The email address of the user who owns the session.
  SessionArgs({
    EnvironmentConfig? environmentConfig,
    JupyterConfig? jupyterSession,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    RuntimeConfig? runtimeConfig,
    required String sessionId,
    String? sessionTemplate,
    String? user,
  }) :
      environmentConfig = pulumi.Input.asOptionalInput<EnvironmentConfig>(environmentConfig),
      jupyterSession = pulumi.Input.asOptionalInput<JupyterConfig>(jupyterSession),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      runtimeConfig = pulumi.Input.asOptionalInput<RuntimeConfig>(runtimeConfig),
      sessionId = pulumi.Input.asInput<String>(sessionId),
      sessionTemplate = pulumi.Input.asOptionalInput<String>(sessionTemplate),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'jupyterSession': ?pulumi.Input.mapOptionalInputValue<JupyterConfig, Map<String, dynamic>>(jupyterSession, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sessionId': sessionId,
      'sessionTemplate': ?sessionTemplate,
      'user': ?user,
    };
  }

  factory SessionArgs.fromMap(Map<String, dynamic> map) {
    return SessionArgs(
      environmentConfig: map['environmentConfig'] == null ? null : EnvironmentConfig.fromMap((map['environmentConfig'] as Map).cast<String, dynamic>()),
      jupyterSession: map['jupyterSession'] == null ? null : JupyterConfig.fromMap((map['jupyterSession'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      runtimeConfig: map['runtimeConfig'] == null ? null : RuntimeConfig.fromMap((map['runtimeConfig'] as Map).cast<String, dynamic>()),
      sessionId: map['sessionId'] as String,
      sessionTemplate: map['sessionTemplate'] == null ? null : map['sessionTemplate'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

