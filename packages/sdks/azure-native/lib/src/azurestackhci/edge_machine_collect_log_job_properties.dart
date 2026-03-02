// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for pausing a server in the cluster.
class EdgeMachineCollectLogJobProperties {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// From date for log collection.
  final pulumi.Input<String> fromDate;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final pulumi.Input<String> jobType;
  /// To date for log collection.
  final pulumi.Input<String> toDate;

  /// Creates a new [EdgeMachineCollectLogJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [fromDate] From date for log collection.
  /// [jobType] Job Type supported.
  /// [toDate] To date for log collection.
  EdgeMachineCollectLogJobProperties({
    this.deploymentMode,
    required this.fromDate,
    required this.jobType,
    required this.toDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'fromDate': fromDate,
      'jobType': jobType,
      'toDate': toDate,
    };
  }

  factory EdgeMachineCollectLogJobProperties.fromMap(Map<String, dynamic> map) {
    return EdgeMachineCollectLogJobProperties(
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode'] as String).input(),
      fromDate: (map['fromDate'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      toDate: (map['toDate'] as String).input(),
    );
  }
}

