import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_response_dataproc_v1.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response_dataproc_v1.dart';
import 'session_template_args.dart';

/// Create a session template synchronously.
class SessionTemplate extends pulumi.CustomResource {
  /// The time when the template was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the template.
  late final pulumi.Output<String> creator;

  /// Optional. Brief description of the template.
  late final pulumi.Output<String> description;

  /// Optional. Environment configuration for session execution.
  late final pulumi.Output<EnvironmentConfigResponseDataprocV1>
      environmentConfig;

  /// Optional. Jupyter session config.
  late final pulumi.Output<JupyterConfigResponse> jupyterSession;

  /// Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the session template.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. Runtime configuration for session execution.
  late final pulumi.Output<RuntimeConfigResponseDataprocV1> runtimeConfig;

  /// The time the template was last updated.
  late final pulumi.Output<String> updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  late final pulumi.Output<String> uuid;

  SessionTemplate(
    String name, {
    SessionTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:SessionTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.description = registerOutput<String>('description');
    this.environmentConfig =
        registerOutput<EnvironmentConfigResponseDataprocV1>(
            'environmentConfig');
    this.jupyterSession =
        registerOutput<JupyterConfigResponse>('jupyterSession');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.runtimeConfig =
        registerOutput<RuntimeConfigResponseDataprocV1>('runtimeConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
