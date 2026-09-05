// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping {
  /// ARN of the event source mapping.
  final pulumi.Input<String> arn;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// AWS region.
  final pulumi.Input<String> region;

  /// Creates a new [PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping].
  /// [arn] ARN of the event source mapping.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [region] AWS region.
  const PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'region': region,
    };
  }

  factory PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
