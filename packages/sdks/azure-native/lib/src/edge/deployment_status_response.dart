// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_status_response.dart';

/// Deployment Status
class DeploymentStatusResponse {
  /// Indicates if Instance is deployed
  final pulumi.Input<int>? deployed;
  /// The expected running job id
  final pulumi.Input<int>? expectedRunningJobId;
  /// Deployment Generation
  final pulumi.Input<int>? generation;
  /// The lastModified of the Status
  final pulumi.Input<String>? lastModified;
  /// The running job id
  final pulumi.Input<int>? runningJobId;
  /// Deployment status
  final pulumi.Input<String>? status;
  /// Status details
  final pulumi.Input<String>? statusDetails;
  /// Target resource statuses
  final pulumi.Input<List<TargetStatusResponse>>? targetStatuses;

  /// Creates a new [DeploymentStatusResponse].
  /// [deployed] Indicates if Instance is deployed
  /// [expectedRunningJobId] The expected running job id
  /// [generation] Deployment Generation
  /// [lastModified] The lastModified of the Status
  /// [runningJobId] The running job id
  /// [status] Deployment status
  /// [statusDetails] Status details
  /// [targetStatuses] Target resource statuses
  DeploymentStatusResponse({
    this.deployed,
    this.expectedRunningJobId,
    this.generation,
    this.lastModified,
    this.runningJobId,
    this.status,
    this.statusDetails,
    this.targetStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployed': ?deployed,
      'expectedRunningJobId': ?expectedRunningJobId,
      'generation': ?generation,
      'lastModified': ?lastModified,
      'runningJobId': ?runningJobId,
      'status': ?status,
      'statusDetails': ?statusDetails,
      'targetStatuses': ?pulumi.Input.mapOptionalInputValue<List<TargetStatusResponse>, List<Map<String, dynamic>>>(targetStatuses, (value) => pulumi.Input.encodeList<TargetStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentStatusResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusResponse(
      deployed: (() { final guardedValue = map['deployed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expectedRunningJobId: (() { final guardedValue = map['expectedRunningJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningJobId: (() { final guardedValue = map['runningJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetStatuses: (() { final guardedValue = map['targetStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetStatusResponse>(guardedValue, (value) => TargetStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

