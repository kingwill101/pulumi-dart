// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterVpcConfig {
  /// The AWS security groups to associate with the ENIs used by the replicator. If a security group is not specified, the default security group associated with the VPC is used.
  final pulumi.Input<List<String>>? securityGroupsIds;
  /// The list of subnets to connect to in the virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets to allow communication between your Kafka Cluster and the replicator.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ReplicatorKafkaClusterVpcConfig].
  /// [securityGroupsIds] The AWS security groups to associate with the ENIs used by the replicator. If a security group is not specified, the default security group associated with the VPC is used.
  /// [subnetIds] The list of subnets to connect to in the virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets to allow communication between your Kafka Cluster and the replicator.
  ReplicatorKafkaClusterVpcConfig({
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
      securityGroupsIds: map['securityGroupsIds'] == null ? null : ((map['securityGroupsIds'] as List).cast<String>()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
    );
  }
}

