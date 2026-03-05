// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the properties of a remote support job for HCI.
class HciRemoteSupportJobProperties {
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

  /// Creates a new [HciRemoteSupportJobProperties].
  /// [accessLevel] Remote support access level.
  /// [deploymentMode] Deployment mode to trigger job.
  /// [expirationTimestamp] Remote support expiration timestamp.
  /// [jobType] Job Type supported.
  /// [type] Remote support type.
  HciRemoteSupportJobProperties({
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

  factory HciRemoteSupportJobProperties.fromMap(Map<String, dynamic> map) {
    return HciRemoteSupportJobProperties(
      accessLevel: pulumi.Input.fromValue(map['accessLevel'] as String),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTimestamp: pulumi.Input.fromValue(map['expirationTimestamp'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

