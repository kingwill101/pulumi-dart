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
      deployed: map['deployed'] == null ? null : (map['deployed'] as int).input(),
      expectedRunningJobId: map['expectedRunningJobId'] == null ? null : (map['expectedRunningJobId'] as int).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified'] as String).input(),
      runningJobId: map['runningJobId'] == null ? null : (map['runningJobId'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusDetails: map['statusDetails'] == null ? null : (map['statusDetails'] as String).input(),
      targetStatuses: map['targetStatuses'] == null ? null : (pulumi.Input.decodeList<TargetStatusResponse>(map['targetStatuses'], (value) => TargetStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

