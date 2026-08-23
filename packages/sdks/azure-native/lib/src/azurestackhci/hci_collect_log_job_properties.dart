// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the properties of an HCI Collect Log job.
class HciCollectLogJobProperties {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// From date for log collection.
  final pulumi.Input<String> fromDate;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final pulumi.Input<String> jobType;
  /// To date for log collection.
  final pulumi.Input<String> toDate;

  /// Creates a new [HciCollectLogJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [fromDate] From date for log collection.
  /// [jobType] Job Type supported.
  /// [toDate] To date for log collection.
  const HciCollectLogJobProperties({
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

  factory HciCollectLogJobProperties.fromMap(Map<String, dynamic> map) {
    return HciCollectLogJobProperties(
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromDate: pulumi.Input.fromValue(map['fromDate'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      toDate: pulumi.Input.fromValue(map['toDate'] as String),
    );
  }
}
