// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../session_template_environment_config/session_template_environment_config.dart';
import '../session_template_jupyter_session/session_template_jupyter_session.dart';
import '../session_template_runtime_config/session_template_runtime_config.dart';

/// The set of arguments for SessionTemplate.
class SessionTemplateArgs {
  /// Environment configuration for the session execution.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateEnvironmentConfig>? environmentConfig;

  /// Jupyter configuration for an interactive session.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateJupyterSession>? jupyterSession;

  /// The labels to associate with this session template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location in which the session template will be created in.
  final pulumi.Input<String>? location;

  /// The resource name of the session template in the following format:
  /// projects/{project}/locations/{location}/sessionTemplates/{template_id}
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Runtime configuration for the session template.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateRuntimeConfig>? runtimeConfig;

  /// Spark connect configuration for an interactive session.
  final pulumi.Input<Map<String, dynamic>>? sparkConnectSession;

  SessionTemplateArgs({
    this.environmentConfig,
    this.jupyterSession,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.runtimeConfig,
    this.sparkConnectSession,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentConfigValue = environmentConfig;
    if (environmentConfigValue != null) {
      map['environmentConfig'] = pulumi.Input.mapOptionalInputValue<
              SessionTemplateEnvironmentConfig, Map<String, dynamic>>(
          environmentConfigValue, (value) => value.toMap());
    }
    final jupyterSessionValue = jupyterSession;
    if (jupyterSessionValue != null) {
      map['jupyterSession'] = pulumi.Input.mapOptionalInputValue<
          SessionTemplateJupyterSession,
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
          SessionTemplateRuntimeConfig,
          Map<String, dynamic>>(runtimeConfigValue, (value) => value.toMap());
    }
    final sparkConnectSessionValue = sparkConnectSession;
    if (sparkConnectSessionValue != null) {
      map['sparkConnectSession'] = sparkConnectSessionValue;
    }
    return map;
  }

  factory SessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SessionTemplateArgs(
      environmentConfig:
          pulumi.Input.asOptionalInput<SessionTemplateEnvironmentConfig>(
              map['environmentConfig']),
      jupyterSession:
          pulumi.Input.asOptionalInput<SessionTemplateJupyterSession>(
              map['jupyterSession']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runtimeConfig: pulumi.Input.asOptionalInput<SessionTemplateRuntimeConfig>(
          map['runtimeConfig']),
      sparkConnectSession: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['sparkConnectSession']),
    );
  }
}
