// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_event_parameter_response.dart';

/// An assertion which will check for a condition over task execution status or an expression for task output variables Next available id: 5
class GoogleCloudIntegrationsV1alphaAssertionResponse {
  /// The type of assertion to perform.
  final String assertionStrategy;

  /// Optional. Standard filter expression for ASSERT_CONDITION to succeed
  final String condition;

  /// Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  final GoogleCloudIntegrationsV1alphaEventParameterResponse parameter;

  /// Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  final int retryCount;

  GoogleCloudIntegrationsV1alphaAssertionResponse({
    required this.assertionStrategy,
    required this.condition,
    required this.parameter,
    required this.retryCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assertionStrategy'] = assertionStrategy;
    map['condition'] = condition;
    map['parameter'] = parameter.toMap();
    map['retryCount'] = retryCount;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaAssertionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAssertionResponse(
      assertionStrategy: map['assertionStrategy'] as String,
      condition: map['condition'] as String,
      parameter: GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap(
          (map['parameter'] as Map).cast<String, dynamic>()),
      retryCount: map['retryCount'] as int,
    );
  }
}
