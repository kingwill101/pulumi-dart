// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentDockerServer {
  /// Compute type for the Docker server. Valid values: `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, and `BUILD_GENERAL1_2XLARGE`.
  final pulumi.Input<String> computeType;
  /// List of security group IDs to assign to the Docker server.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// Creates a new [ProjectEnvironmentDockerServer].
  /// [computeType] Compute type for the Docker server. Valid values: `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, and `BUILD_GENERAL1_2XLARGE`.
  /// [securityGroupIds] List of security group IDs to assign to the Docker server.
  const ProjectEnvironmentDockerServer({
    required this.computeType,
    this.securityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': computeType,
      'securityGroupIds': ?securityGroupIds,
    };
  }

  factory ProjectEnvironmentDockerServer.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentDockerServer(
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
