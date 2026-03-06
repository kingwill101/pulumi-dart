// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_status_response.dart';
import 'reconciliation_policy_properties_response.dart';

/// Instance Properties
class InstancePropertiesResponse {
  /// State of instance
  final pulumi.Input<String>? activeState;
  /// Deployment timestamp of instance
  final pulumi.Input<double> deploymentTimestampEpoch;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Reconciliation policy of instance
  final pulumi.Input<ReconciliationPolicyPropertiesResponse>? reconciliationPolicy;
  /// Scope of instance
  final pulumi.Input<String>? solutionScope;
  /// Solution version of instance
  final pulumi.Input<String> solutionVersionId;
  /// Status of instance
  final pulumi.Input<DeploymentStatusResponse> status;
  /// Target of instance
  final pulumi.Input<String> targetId;

  /// Creates a new [InstancePropertiesResponse].
  /// [activeState] State of instance
  /// [deploymentTimestampEpoch] Deployment timestamp of instance
  /// [provisioningState] Provisioning state of resource
  /// [reconciliationPolicy] Reconciliation policy of instance
  /// [solutionScope] Scope of instance
  /// [solutionVersionId] Solution version of instance
  /// [status] Status of instance
  /// [targetId] Target of instance
  const InstancePropertiesResponse({
    this.activeState,
    required this.deploymentTimestampEpoch,
    required this.provisioningState,
    this.reconciliationPolicy,
    this.solutionScope,
    required this.solutionVersionId,
    required this.status,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeState': ?activeState,
      'deploymentTimestampEpoch': deploymentTimestampEpoch,
      'provisioningState': provisioningState,
      'reconciliationPolicy': ?pulumi.Input.mapOptionalInputValue<ReconciliationPolicyPropertiesResponse, Map<String, dynamic>>(reconciliationPolicy, (value) => value.toMap()),
      'solutionScope': ?solutionScope,
      'solutionVersionId': solutionVersionId,
      'status': pulumi.Input.mapInputValue<DeploymentStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'targetId': targetId,
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      activeState: (() { final guardedValue = map['activeState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTimestampEpoch: pulumi.Input.fromValue(map['deploymentTimestampEpoch'] as double),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reconciliationPolicy: (() { final guardedValue = map['reconciliationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReconciliationPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      solutionScope: (() { final guardedValue = map['solutionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionVersionId: pulumi.Input.fromValue(map['solutionVersionId'] as String),
      status: pulumi.Input.fromValue(DeploymentStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

