// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_assertion_response.dart';
import 'google_cloud_integrations_v1alpha_mock_config_response.dart';

/// The task mock configuration details and assertions for functional tests. Next available id: 5
class GoogleCloudIntegrationsV1alphaTestTaskConfigResponse {
  /// Optional. List of conditions or expressions which should be evaluated to true unless there is a bug/problem in the integration. These are evaluated one the task execution is completed as per the mock strategy in test case
  final List<GoogleCloudIntegrationsV1alphaAssertionResponse> assertions;

  /// Optional. Defines how to mock the given task during test execution
  final GoogleCloudIntegrationsV1alphaMockConfigResponse mockConfig;

  /// This defines in the test case, the task name in integration which will be mocked by this test task config
  final String task;

  /// This defines in the test case, the task in integration which will be mocked by this test task config
  final String taskNumber;

  GoogleCloudIntegrationsV1alphaTestTaskConfigResponse({
    required this.assertions,
    required this.mockConfig,
    required this.task,
    required this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assertions'] = pulumi.Input.encodeList<
        GoogleCloudIntegrationsV1alphaAssertionResponse,
        Map<String, dynamic>>(assertions, (value) => value.toMap());
    map['mockConfig'] = mockConfig.toMap();
    map['task'] = task;
    map['taskNumber'] = taskNumber;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaTestTaskConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTestTaskConfigResponse(
      assertions: pulumi.Input.decodeList<
              GoogleCloudIntegrationsV1alphaAssertionResponse>(
          map['assertions'],
          (value) => GoogleCloudIntegrationsV1alphaAssertionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      mockConfig: GoogleCloudIntegrationsV1alphaMockConfigResponse.fromMap(
          (map['mockConfig'] as Map).cast<String, dynamic>()),
      task: map['task'] as String,
      taskNumber: map['taskNumber'] as String,
    );
  }
}
