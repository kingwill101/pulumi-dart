import 'package:pulumi/pulumi.dart';
import 'environment_config_response3.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response2.dart';
import 'session_template_args.dart';

/// Create a session template synchronously.
class SessionTemplate extends CustomResource {
  /// The time when the template was created.
  late final Output<String> createTime;

  /// The email address of the user who created the template.
  late final Output<String> creator;

  /// Optional. Brief description of the template.
  late final Output<String> description;

  /// Optional. Environment configuration for session execution.
  late final Output<EnvironmentConfigResponse3> environmentConfig;

  /// Optional. Jupyter session config.
  late final Output<JupyterConfigResponse> jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the session template.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Runtime configuration for session execution.
  late final Output<RuntimeConfigResponse2> runtimeConfig;

  /// The time the template was last updated.
  late final Output<String> updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  late final Output<String> uuid;

  SessionTemplate(
    String name, {
    SessionTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:SessionTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.creator = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.environmentConfig = Output.createUnknown<EnvironmentConfigResponse3>();
    this.jupyterSession = Output.createUnknown<JupyterConfigResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.runtimeConfig = Output.createUnknown<RuntimeConfigResponse2>();
    this.updateTime = Output.createUnknown<String>();
    this.uuid = Output.createUnknown<String>();
  }
}
