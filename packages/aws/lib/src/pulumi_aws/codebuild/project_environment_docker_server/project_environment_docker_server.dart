// ignore_for_file: unused_element, unnecessary_cast

class ProjectEnvironmentDockerServer {
  /// Compute type for the Docker server. Valid values: `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, and `BUILD_GENERAL1_2XLARGE`.
  final String computeType;

  /// List of security group IDs to assign to the Docker server.
  final List<String>? securityGroupIds;

  ProjectEnvironmentDockerServer({
    required this.computeType,
    this.securityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeType'] = computeType;
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    return map;
  }

  factory ProjectEnvironmentDockerServer.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentDockerServer(
      computeType: map['computeType'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
    );
  }
}
