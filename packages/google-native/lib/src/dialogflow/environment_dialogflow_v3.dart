import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_dialogflow_v3_args.dart';
import 'google_cloud_dialogflow_cx_v3_environment_test_cases_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_version_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_webhook_config_response.dart';

/// Creates an Environment in the specified Agent. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: Environment
class EnvironmentDialogflowV3 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String> description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The test cases config for continuous tests of this environment.
  late final pulumi
      .Output<GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse>
      testCasesConfig;

  /// Update time of this environment.
  late final pulumi.Output<String> updateTime;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  late final pulumi
      .Output<List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>>
      versionConfigs;

  /// The webhook configuration for this environment.
  late final pulumi
      .Output<GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse>
      webhookConfig;

  /// Creates a new [EnvironmentDialogflowV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentDialogflowV3]. {@macro pulumi_dialogflow_v3_environment_dialogflow_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentDialogflowV3(
    String name, {
    EnvironmentDialogflowV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.testCasesConfig = registerOutput<
            GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse>(
        'testCasesConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionConfigs = registerOutput<
            List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>>(
        'versionConfigs');
    this.webhookConfig = registerOutput<
            GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse>(
        'webhookConfig');
  }
}
