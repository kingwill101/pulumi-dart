// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterVpcConfig {
  /// The AWS security groups to associate with the ENIs used by the replicator. If a security group is not specified, the default security group associated with the VPC is used.
  final pulumi.Input<List<String>?>? securityGroupsIds;
  /// List of subnets to connect to in the VPC. AWS creates elastic network interfaces inside these subnets to allow communication between your Kafka Cluster and the replicator.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ReplicatorKafkaClusterVpcConfig].
  /// [securityGroupsIds] The AWS security groups to associate with the ENIs used by the replicator. If a security group is not specified, the default security group associated with the VPC is used.
  /// [subnetIds] List of subnets to connect to in the VPC. AWS creates elastic network interfaces inside these subnets to allow communication between your Kafka Cluster and the replicator.
  const ReplicatorKafkaClusterVpcConfig({
    this.securityGroupsIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupsIds': ?securityGroupsIds,
      'subnetIds': subnetIds,
    };
  }

  factory ReplicatorKafkaClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterVpcConfig(
      securityGroupsIds: (() { final guardedValue = map['securityGroupsIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
