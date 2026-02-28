// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'jupyter_config.dart';
import 'runtime_config.dart';

/// {@template pulumi_dataproc_v1_session_template_args_doc}
/// The set of arguments for SessionTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_session_template_args_doc}
class SessionTemplateArgs {
  /// Optional. Brief description of the template.
  final pulumi.Input<String>? description;

  /// Optional. Environment configuration for session execution.
  final pulumi.Input<EnvironmentConfig>? environmentConfig;

  /// Optional. Jupyter session config.
  final pulumi.Input<JupyterConfig>? jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the session template.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Runtime configuration for session execution.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;

  /// Creates a new [SessionTemplateArgs].
  /// [description] Optional. Brief description of the template.
  /// [environmentConfig] Optional. Environment configuration for session execution.
  /// [jupyterSession] Optional. Jupyter session config.
  /// [labels] Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  /// [location] Optional.
  /// [name] The resource name of the session template.
  /// [project] Optional.
  /// [runtimeConfig] Optional. Runtime configuration for session execution.
  SessionTemplateArgs({
    String? description,
    EnvironmentConfig? environmentConfig,
    JupyterConfig? jupyterSession,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    RuntimeConfig? runtimeConfig,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        environmentConfig =
            pulumi.Input.asOptionalInput<EnvironmentConfig>(environmentConfig),
        jupyterSession =
            pulumi.Input.asOptionalInput<JupyterConfig>(jupyterSession),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        runtimeConfig =
            pulumi.Input.asOptionalInput<RuntimeConfig>(runtimeConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentConfigValue = environmentConfig;
    if (environmentConfigValue != null) {
      map['environmentConfig'] = pulumi.Input.mapOptionalInputValue<
              EnvironmentConfig, Map<String, dynamic>>(
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
      map['runtimeConfig'] = pulumi.Input.mapOptionalInputValue<RuntimeConfig,
          Map<String, dynamic>>(runtimeConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      environmentConfig: map['environmentConfig'] == null
          ? null
          : EnvironmentConfig.fromMap(
              (map['environmentConfig'] as Map).cast<String, dynamic>()),
      jupyterSession: map['jupyterSession'] == null
          ? null
          : JupyterConfig.fromMap(
              (map['jupyterSession'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : RuntimeConfig.fromMap(
              (map['runtimeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
