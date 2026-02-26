// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_environment_test_cases_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_version_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_webhook_config_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult7 {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final String displayName;

  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  final String name;

  /// The test cases config for continuous tests of this environment.
  final GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse
      testCasesConfig;

  /// Update time of this environment.
  final String updateTime;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  final List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>
      versionConfigs;

  /// The webhook configuration for this environment.
  final GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse webhookConfig;

  GetEnvironmentResult7({
    required this.description,
    required this.displayName,
    required this.name,
    required this.testCasesConfig,
    required this.updateTime,
    required this.versionConfigs,
    required this.webhookConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['testCasesConfig'] = testCasesConfig.toMap();
    map['updateTime'] = updateTime;
    map['versionConfigs'] = Input.encodeList<
        GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse,
        Map<String, dynamic>>(versionConfigs, (value) => value.toMap());
    map['webhookConfig'] = webhookConfig.toMap();
    return map;
  }

  factory GetEnvironmentResult7.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult7(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      testCasesConfig:
          GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse.fromMap(
              (map['testCasesConfig'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      versionConfigs: Input.decodeList<
              GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>(
          map['versionConfigs'],
          (value) =>
              GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      webhookConfig:
          GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse.fromMap(
              (map['webhookConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
