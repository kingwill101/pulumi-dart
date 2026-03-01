// ignore_for_file: unused_element, unnecessary_cast


/// Properties for adding a server in the cluster.
class EdgeMachineRemoteSupportJobProperties {
  /// Remote support access level.
  final String accessLevel;
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// Remote support expiration timestamp.
  final String expirationTimestamp;
  /// Job Type supported.
  /// Expected value is 'RemoteSupport'.
  final String jobType;
  /// Remote support type.
  final String type;

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
      accessLevel: map['accessLevel'] as String,
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      expirationTimestamp: map['expirationTimestamp'] as String,
      jobType: map['jobType'] as String,
      type: map['type'] as String,
    );
  }
}

