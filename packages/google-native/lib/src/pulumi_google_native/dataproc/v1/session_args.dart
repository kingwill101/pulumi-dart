// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'environment_config3.dart';
import 'jupyter_config.dart';
import 'runtime_config2.dart';

/// The set of arguments for Session.
class SessionArgs {
  /// Optional. Environment configuration for the session execution.
  final Input<EnvironmentConfig3>? environmentConfig;

  /// Optional. Jupyter session config.
  final Input<JupyterConfig>? jupyterSession;

  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name of the session.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. Runtime configuration for the session execution.
  final Input<RuntimeConfig2>? runtimeConfig;

  /// Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  final Input<String> sessionId;

  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  final Input<String>? sessionTemplate;

  /// Optional. The email address of the user who owns the session.
  final Input<String>? user;

  SessionArgs({
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.runtimeConfig,
    required this.sessionId,
    this.sessionTemplate,
    this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentConfigValue = environmentConfig;
    if (environmentConfigValue != null) {
      map['environmentConfig'] =
          Input.mapOptionalInputValue<EnvironmentConfig3, Map<String, dynamic>>(
              environmentConfigValue, (value) => value.toMap());
    }
    final jupyterSessionValue = jupyterSession;
    if (jupyterSessionValue != null) {
      map['jupyterSession'] =
          Input.mapOptionalInputValue<JupyterConfig, Map<String, dynamic>>(
              jupyterSessionValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] =
          Input.mapOptionalInputValue<RuntimeConfig2, Map<String, dynamic>>(
              runtimeConfigValue, (value) => value.toMap());
    }
    map['sessionId'] = sessionId;
    final sessionTemplateValue = sessionTemplate;
    if (sessionTemplateValue != null) {
      map['sessionTemplate'] = sessionTemplateValue;
    }
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory SessionArgs.fromMap(Map<String, dynamic> map) {
    return SessionArgs(
      environmentConfig:
          Input.asOptionalInput<EnvironmentConfig3>(map['environmentConfig']),
      jupyterSession:
          Input.asOptionalInput<JupyterConfig>(map['jupyterSession']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      runtimeConfig:
          Input.asOptionalInput<RuntimeConfig2>(map['runtimeConfig']),
      sessionId: Input.asInput<String>(map['sessionId']),
      sessionTemplate: Input.asOptionalInput<String>(map['sessionTemplate']),
      user: Input.asOptionalInput<String>(map['user']),
    );
  }
}
