// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_environment_test_cases_config.dart';
import 'google_cloud_dialogflow_cx_v3_environment_version_config.dart';
import 'google_cloud_dialogflow_cx_v3_environment_webhook_config.dart';

/// The set of arguments for Environment.
class EnvironmentArgs7 {
  final Input<String> agentId;

  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final Input<String> displayName;
  final Input<String>? location;

  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  final Input<String>? name;
  final Input<String>? project;

  /// The test cases config for continuous tests of this environment.
  final Input<GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig>?
      testCasesConfig;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  final Input<List<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>>?
      versionConfigs;

  /// The webhook configuration for this environment.
  final Input<GoogleCloudDialogflowCxV3EnvironmentWebhookConfig>? webhookConfig;

  EnvironmentArgs7({
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
      map['testCasesConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig,
          Map<String, dynamic>>(testCasesConfigValue, (value) => value.toMap());
    }
    final versionConfigsValue = versionConfigs;
    if (versionConfigsValue != null) {
      map['versionConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>,
              List<Map<String, dynamic>>>(
          versionConfigsValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3EnvironmentVersionConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final webhookConfigValue = webhookConfig;
    if (webhookConfigValue != null) {
      map['webhookConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3EnvironmentWebhookConfig,
          Map<String, dynamic>>(webhookConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs7.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs7(
      agentId: Input.asInput<String>(map['agentId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      testCasesConfig: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig>(
          map['testCasesConfig']),
      versionConfigs: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>>(
          map['versionConfigs']),
      webhookConfig: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3EnvironmentWebhookConfig>(
          map['webhookConfig']),
    );
  }
}
