// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_integrations_v1alpha_event_parameter_response.dart';

/// The configuration for mocking of a task during test execution Next available id: 4
class GoogleCloudIntegrationsV1alphaMockConfigResponse {
  /// Optional. Number of times the given task should fail for failure mock strategy
  final String failedExecutions;

  /// Mockstrategy defines how the particular task should be mocked during test execution
  final String mockStrategy;

  /// Optional. List of key-value pairs for specific mock strategy
  final List<GoogleCloudIntegrationsV1alphaEventParameterResponse> parameters;

  GoogleCloudIntegrationsV1alphaMockConfigResponse({
    required this.failedExecutions,
    required this.mockStrategy,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failedExecutions'] = failedExecutions;
    map['mockStrategy'] = mockStrategy;
    map['parameters'] = Input.encodeList<
        GoogleCloudIntegrationsV1alphaEventParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaMockConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaMockConfigResponse(
      failedExecutions: map['failedExecutions'] as String,
      mockStrategy: map['mockStrategy'] as String,
      parameters: Input.decodeList<
              GoogleCloudIntegrationsV1alphaEventParameterResponse>(
          map['parameters'],
          (value) =>
              GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
