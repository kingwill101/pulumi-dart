import 'package:pulumi/pulumi.dart';
import 'environment_args7.dart';
import 'google_cloud_dialogflow_cx_v3_environment_test_cases_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_version_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_webhook_config_response.dart';

/// Creates an Environment in the specified Agent. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: Environment
class Environment10 extends CustomResource {
  late final Output<String> agentId;

  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final Output<String> description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  late final Output<String> displayName;
  late final Output<String> location;

  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  late final Output<String> name;
  late final Output<String> project;

  /// The test cases config for continuous tests of this environment.
  late final Output<GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse>
      testCasesConfig;

  /// Update time of this environment.
  late final Output<String> updateTime;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  late final Output<
          List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>>
      versionConfigs;

  /// The webhook configuration for this environment.
  late final Output<GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse>
      webhookConfig;

  Environment10(
    String name, {
    EnvironmentArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.testCasesConfig = Output.createUnknown<
        GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse>();
    this.updateTime = Output.createUnknown<String>();
    this.versionConfigs = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>>();
    this.webhookConfig = Output.createUnknown<
        GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse>();
  }
}
