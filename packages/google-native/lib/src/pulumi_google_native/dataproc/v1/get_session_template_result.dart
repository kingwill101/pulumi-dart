// ignore_for_file: unused_element, unnecessary_cast

import 'environment_config_response3.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response2.dart';

/// Result data returned by getSessionTemplate.
class GetSessionTemplateResult {
  /// The time when the template was created.
  final String createTime;

  /// The email address of the user who created the template.
  final String creator;

  /// Optional. Brief description of the template.
  final String description;

  /// Optional. Environment configuration for session execution.
  final EnvironmentConfigResponse3 environmentConfig;

  /// Optional. Jupyter session config.
  final JupyterConfigResponse jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final Map<String, String> labels;

  /// The resource name of the session template.
  final String name;

  /// Optional. Runtime configuration for session execution.
  final RuntimeConfigResponse2 runtimeConfig;

  /// The time the template was last updated.
  final String updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  final String uuid;

  GetSessionTemplateResult({
    required this.createTime,
    required this.creator,
    required this.description,
    required this.environmentConfig,
    required this.jupyterSession,
    required this.labels,
    required this.name,
    required this.runtimeConfig,
    required this.updateTime,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['description'] = description;
    map['environmentConfig'] = environmentConfig.toMap();
    map['jupyterSession'] = jupyterSession.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['runtimeConfig'] = runtimeConfig.toMap();
    map['updateTime'] = updateTime;
    map['uuid'] = uuid;
    return map;
  }

  factory GetSessionTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetSessionTemplateResult(
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      description: map['description'] as String,
      environmentConfig: EnvironmentConfigResponse3.fromMap(
          (map['environmentConfig'] as Map).cast<String, dynamic>()),
      jupyterSession: JupyterConfigResponse.fromMap(
          (map['jupyterSession'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      runtimeConfig: RuntimeConfigResponse2.fromMap(
          (map['runtimeConfig'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
