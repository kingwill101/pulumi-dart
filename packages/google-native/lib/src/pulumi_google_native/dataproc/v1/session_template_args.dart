// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_config3.dart';
import 'jupyter_config.dart';
import 'runtime_config2.dart';

/// The set of arguments for SessionTemplate.
class SessionTemplateArgs {
  /// Optional. Brief description of the template.
  final Input<String>? description;

  /// Optional. Environment configuration for session execution.
  final Input<EnvironmentConfig3>? environmentConfig;

  /// Optional. Jupyter session config.
  final Input<JupyterConfig>? jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name of the session template.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Runtime configuration for session execution.
  final Input<RuntimeConfig2>? runtimeConfig;

  SessionTemplateArgs({
    this.description,
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] =
          Input.mapOptionalInputValue<RuntimeConfig2, Map<String, dynamic>>(
              runtimeConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      description: Input.asOptionalInput<String>(map['description']),
      environmentConfig:
          Input.asOptionalInput<EnvironmentConfig3>(map['environmentConfig']),
      jupyterSession:
          Input.asOptionalInput<JupyterConfig>(map['jupyterSession']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeConfig:
          Input.asOptionalInput<RuntimeConfig2>(map['runtimeConfig']),
    );
  }
}
