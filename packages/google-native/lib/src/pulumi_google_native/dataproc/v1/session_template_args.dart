// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_dataproc_v1.dart';
import 'jupyter_config.dart';
import 'runtime_config_dataproc_v1.dart';

/// The set of arguments for SessionTemplate.
class SessionTemplateArgs {
  /// Optional. Brief description of the template.
  final pulumi.Input<String>? description;

  /// Optional. Environment configuration for session execution.
  final pulumi.Input<EnvironmentConfigDataprocV1>? environmentConfig;

  /// Optional. Jupyter session config.
  final pulumi.Input<JupyterConfig>? jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the session template.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Runtime configuration for session execution.
  final pulumi.Input<RuntimeConfigDataprocV1>? runtimeConfig;

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
      map['environmentConfig'] = pulumi.Input.mapOptionalInputValue<
              EnvironmentConfigDataprocV1, Map<String, dynamic>>(
          environmentConfigValue, (value) => value.toMap());
    }
    final jupyterSessionValue = jupyterSession;
    if (jupyterSessionValue != null) {
      map['jupyterSession'] = pulumi.Input.mapOptionalInputValue<JupyterConfig,
          Map<String, dynamic>>(jupyterSessionValue, (value) => value.toMap());
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
      map['runtimeConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeConfigDataprocV1,
          Map<String, dynamic>>(runtimeConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentConfig:
          pulumi.Input.asOptionalInput<EnvironmentConfigDataprocV1>(
              map['environmentConfig']),
      jupyterSession:
          pulumi.Input.asOptionalInput<JupyterConfig>(map['jupyterSession']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runtimeConfig: pulumi.Input.asOptionalInput<RuntimeConfigDataprocV1>(
          map['runtimeConfig']),
    );
  }
}
