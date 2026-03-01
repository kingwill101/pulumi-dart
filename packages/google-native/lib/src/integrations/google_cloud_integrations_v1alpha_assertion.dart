// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_assertion_assertion_strategy.dart';
import 'google_cloud_integrations_v1alpha_event_parameter.dart';

/// An assertion which will check for a condition over task execution status or an expression for task output variables Next available id: 5
class GoogleCloudIntegrationsV1alphaAssertion {
  /// The type of assertion to perform.
  final GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy?
  assertionStrategy;

  /// Optional. Standard filter expression for ASSERT_CONDITION to succeed
  final String? condition;

  /// Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  final GoogleCloudIntegrationsV1alphaEventParameter? parameter;

  /// Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  final int? retryCount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAssertion].
  /// [assertionStrategy] The type of assertion to perform.
  /// [condition] Optional. Standard filter expression for ASSERT_CONDITION to succeed
  /// [parameter] Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  /// [retryCount] Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  GoogleCloudIntegrationsV1alphaAssertion({
    this.assertionStrategy,
    this.condition,
    this.parameter,
    this.retryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionStrategy': ?assertionStrategy == null
          ? null
          : assertionStrategy!.value,
      'condition': ?condition,
      'parameter': ?parameter == null ? null : parameter!.toMap(),
      'retryCount': ?retryCount,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAssertion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaAssertion(
      assertionStrategy: map['assertionStrategy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy.fromValue(
              map['assertionStrategy'] as String,
            ),
      condition: map['condition'] == null ? null : map['condition'] as String,
      parameter: map['parameter'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaEventParameter.fromMap(
              (map['parameter'] as Map).cast<String, dynamic>(),
            ),
      retryCount: map['retryCount'] == null ? null : map['retryCount'] as int,
    );
  }
}
