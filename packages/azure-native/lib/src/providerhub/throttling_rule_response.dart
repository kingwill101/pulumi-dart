// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_metric_response.dart';

class ThrottlingRuleResponse {
  /// The action.
  final String action;
  /// The application id.
  final List<String>? applicationId;
  /// The metrics.
  final List<ThrottlingMetricResponse> metrics;
  /// The required features.
  final List<String>? requiredFeatures;

  /// Creates a new [ThrottlingRuleResponse].
  /// [action] The action.
  /// [applicationId] The application id.
  /// [metrics] The metrics.
  /// [requiredFeatures] The required features.
  ThrottlingRuleResponse({
    required this.action,
    this.applicationId,
    required this.metrics,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'applicationId': ?applicationId,
      'metrics': pulumi.Input.encodeList<ThrottlingMetricResponse, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory ThrottlingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingRuleResponse(
      action: map['action'] as String,
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as List).cast<String>(),
      metrics: pulumi.Input.decodeList<ThrottlingMetricResponse>(map['metrics'], (value) => ThrottlingMetricResponse.fromMap((value as Map).cast<String, dynamic>())),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
    );
  }
}

