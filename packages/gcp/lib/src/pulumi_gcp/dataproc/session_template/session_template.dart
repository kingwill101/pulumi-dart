import 'package:pulumi/pulumi.dart' as pulumi;
import '../session_template_environment_config/session_template_environment_config.dart';
import '../session_template_jupyter_session/session_template_jupyter_session.dart';
import '../session_template_runtime_config/session_template_runtime_config.dart';
import 'session_template_args.dart';

/// A Dataproc Serverless session template defines the configuration settings for
/// creating one or more Dataproc Serverless interactive sessions.
///
///
/// To get more information about SessionTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.sessionTemplates)
/// * How-to Guides
/// * [Dataproc Serverless Session Templates](https://cloud.google.com/dataproc-serverless/docs/guides/create-serverless-sessions-templates#create-dataproc-serverless-session-template)
///
/// ## Example Usage
///
/// ### Dataproc Session Templates Jupyter
///
///
///
/// ### Dataproc Session Templates Jupyter Full
///
///
///
/// ### Dataproc Session Templates Spark Connect
///
///
///
///
/// ## Import
///
/// SessionTemplate can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SessionTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/sessionTemplate:SessionTemplate default {{name}}
/// ```
class SessionTemplate extends pulumi.CustomResource {
  /// The time when the session template was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the session template.
  late final pulumi.Output<String> creator;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Environment configuration for the session execution.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateEnvironmentConfig?> environmentConfig;

  /// Jupyter configuration for an interactive session.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateJupyterSession?> jupyterSession;

  /// The labels to associate with this session template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location in which the session template will be created in.
  late final pulumi.Output<String?> location;

  /// The resource name of the session template in the following format:
  /// projects/{project}/locations/{location}/sessionTemplates/{template_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Runtime configuration for the session template.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateRuntimeConfig?> runtimeConfig;

  /// Spark connect configuration for an interactive session.
  late final pulumi.Output<Map<String, dynamic>?> sparkConnectSession;

  /// The time when the session template was updated.
  late final pulumi.Output<String> updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  late final pulumi.Output<String> uuid;

  SessionTemplate(
    String name, {
    SessionTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/sessionTemplate:SessionTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environmentConfig =
        registerOutput<SessionTemplateEnvironmentConfig?>('environmentConfig');
    this.jupyterSession =
        registerOutput<SessionTemplateJupyterSession?>('jupyterSession');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.runtimeConfig =
        registerOutput<SessionTemplateRuntimeConfig?>('runtimeConfig');
    this.sparkConnectSession =
        registerOutput<Map<String, dynamic>?>('sparkConnectSession');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
