// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_environment_test_cases_config.dart';
import 'google_cloud_dialogflow_cx_v3beta1_environment_version_config.dart';
import 'google_cloud_dialogflow_cx_v3beta1_environment_webhook_config.dart';

/// {@template pulumi_dialogflow_v3beta1_environment_dialogflow_v3beta1_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_environment_dialogflow_v3beta1_args_doc}
class EnvironmentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The test cases config for continuous tests of this environment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig>? testCasesConfig;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>>? versionConfigs;
  /// The webhook configuration for this environment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig>? webhookConfig;

  /// Creates a new [EnvironmentDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [location] Optional.
  /// [name] The name of the environment. Format: `projects//locations//agents//environments/`.
  /// [project] Optional.
  /// [testCasesConfig] The test cases config for continuous tests of this environment.
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  /// [webhookConfig] The webhook configuration for this environment.
  EnvironmentDialogflowV3beta1Args({
    required String agentId,
    String? description,
    required String displayName,
    String? location,
    String? name,
    String? project,
    GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig? testCasesConfig,
    List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>? versionConfigs,
    GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig? webhookConfig,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      testCasesConfig = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig>(testCasesConfig),
      versionConfigs = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>>(versionConfigs),
      webhookConfig = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig>(webhookConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'testCasesConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig, Map<String, dynamic>>(testCasesConfig, (value) => value.toMap()),
      'versionConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig, Map<String, dynamic>>(webhookConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      testCasesConfig: map['testCasesConfig'] == null ? null : GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig.fromMap((map['testCasesConfig'] as Map).cast<String, dynamic>()),
      versionConfigs: map['versionConfigs'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>(map['versionConfigs'], (value) => GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig.fromMap((value as Map).cast<String, dynamic>())),
      webhookConfig: map['webhookConfig'] == null ? null : GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromMap((map['webhookConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

