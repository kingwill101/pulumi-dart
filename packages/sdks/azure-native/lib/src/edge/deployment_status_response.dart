// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_status_response.dart';

/// Deployment Status
class DeploymentStatusResponse {
  /// Indicates if Instance is deployed
  final int? deployed;
  /// The expected running job id
  final int? expectedRunningJobId;
  /// Deployment Generation
  final int? generation;
  /// The lastModified of the Status
  final String? lastModified;
  /// The running job id
  final int? runningJobId;
  /// Deployment status
  final String? status;
  /// Status details
  final String? statusDetails;
  /// Target resource statuses
  final List<TargetStatusResponse>? targetStatuses;

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
      'targetStatuses': ?targetStatuses == null ? null : pulumi.Input.encodeList<TargetStatusResponse, Map<String, dynamic>>(targetStatuses!, (value) => value.toMap()),
    };
  }

  factory DeploymentStatusResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusResponse(
      deployed: map['deployed'] == null ? null : map['deployed'] as int,
      expectedRunningJobId: map['expectedRunningJobId'] == null ? null : map['expectedRunningJobId'] as int,
      generation: map['generation'] == null ? null : map['generation'] as int,
      lastModified: map['lastModified'] == null ? null : map['lastModified'] as String,
      runningJobId: map['runningJobId'] == null ? null : map['runningJobId'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      statusDetails: map['statusDetails'] == null ? null : map['statusDetails'] as String,
      targetStatuses: map['targetStatuses'] == null ? null : pulumi.Input.decodeList<TargetStatusResponse>(map['targetStatuses'], (value) => TargetStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

