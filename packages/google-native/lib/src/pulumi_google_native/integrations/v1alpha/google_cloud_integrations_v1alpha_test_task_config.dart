// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_integrations_v1alpha_assertion.dart';
import 'google_cloud_integrations_v1alpha_mock_config.dart';

/// The task mock configuration details and assertions for functional tests. Next available id: 5
class GoogleCloudIntegrationsV1alphaTestTaskConfig {
  /// Optional. List of conditions or expressions which should be evaluated to true unless there is a bug/problem in the integration. These are evaluated one the task execution is completed as per the mock strategy in test case
  final List<GoogleCloudIntegrationsV1alphaAssertion>? assertions;

  /// Optional. Defines how to mock the given task during test execution
  final GoogleCloudIntegrationsV1alphaMockConfig? mockConfig;

  /// This defines in the test case, the task name in integration which will be mocked by this test task config
  final String task;

  /// This defines in the test case, the task in integration which will be mocked by this test task config
  final String taskNumber;

  GoogleCloudIntegrationsV1alphaTestTaskConfig({
    this.assertions,
    this.mockConfig,
    required this.task,
    required this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assertionsValue = assertions;
    if (assertionsValue != null) {
      map['assertions'] = Input.encodeList<
          GoogleCloudIntegrationsV1alphaAssertion,
          Map<String, dynamic>>(assertionsValue, (value) => value.toMap());
    }
    final mockConfigValue = mockConfig;
    if (mockConfigValue != null) {
      map['mockConfig'] = mockConfigValue.toMap();
    }
    map['task'] = task;
    map['taskNumber'] = taskNumber;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaTestTaskConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTestTaskConfig(
      assertions: map['assertions'] == null
          ? null
          : Input.decodeList<GoogleCloudIntegrationsV1alphaAssertion>(
              map['assertions'],
              (value) => GoogleCloudIntegrationsV1alphaAssertion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mockConfig: map['mockConfig'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaMockConfig.fromMap(
              (map['mockConfig'] as Map).cast<String, dynamic>()),
      task: map['task'] as String,
      taskNumber: map['taskNumber'] as String,
    );
  }
}
