// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_environment_test_cases_config.dart';
import 'google_cloud_dialogflow_cx_v3beta1_environment_version_config.dart';
import 'google_cloud_dialogflow_cx_v3beta1_environment_webhook_config.dart';

/// The set of arguments for Environment.
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
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig>?
      testCasesConfig;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  final pulumi
      .Input<List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>>?
      versionConfigs;

  /// The webhook configuration for this environment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig>?
      webhookConfig;

  EnvironmentDialogflowV3beta1Args({
    required this.agentId,
    this.description,
    required this.displayName,
    this.location,
    this.name,
    this.project,
    this.testCasesConfig,
    this.versionConfigs,
    this.webhookConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
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
    final testCasesConfigValue = testCasesConfig;
    if (testCasesConfigValue != null) {
      map['testCasesConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig,
          Map<String, dynamic>>(testCasesConfigValue, (value) => value.toMap());
    }
    final versionConfigsValue = versionConfigs;
    if (versionConfigsValue != null) {
      map['versionConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>,
              List<Map<String, dynamic>>>(
          versionConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final webhookConfigValue = webhookConfig;
    if (webhookConfigValue != null) {
      map['webhookConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig,
          Map<String, dynamic>>(webhookConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      testCasesConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig>(
          map['testCasesConfig']),
      versionConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>>(
          map['versionConfigs']),
      webhookConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig>(
          map['webhookConfig']),
    );
  }
}
