// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for adding a server in the cluster.
class EdgeMachineRemoteSupportJobProperties {
  /// Remote support access level.
  final pulumi.Input<String> accessLevel;
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// Remote support expiration timestamp.
  final pulumi.Input<String> expirationTimestamp;
  /// Job Type supported.
  /// Expected value is 'RemoteSupport'.
  final pulumi.Input<String> jobType;
  /// Remote support type.
  final pulumi.Input<String> type;

  /// Creates a new [EdgeMachineRemoteSupportJobProperties].
  /// [accessLevel] Remote support access level.
  /// [deploymentMode] Deployment mode to trigger job.
  /// [expirationTimestamp] Remote support expiration timestamp.
  /// [jobType] Job Type supported.
  /// [type] Remote support type.
  EdgeMachineRemoteSupportJobProperties({
    required this.accessLevel,
    this.deploymentMode,
    required this.expirationTimestamp,
    required this.jobType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'deploymentMode': ?deploymentMode,
      'expirationTimestamp': expirationTimestamp,
      'jobType': jobType,
      'type': type,
    };
  }

  factory EdgeMachineRemoteSupportJobProperties.fromMap(Map<String, dynamic> map) {
    return EdgeMachineRemoteSupportJobProperties(
      accessLevel: (map['accessLevel'] as String).input(),
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode'] as String).input(),
      expirationTimestamp: (map['expirationTimestamp'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

