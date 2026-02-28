// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateActionTarget {
  /// Target type. Valid values are `AutoScalingGroups` (EC2 Auto Scaling groups), `Buckets` (S3 Buckets), `Cluster` (EKS Cluster), `Clusters` (ECS Clusters), `DBInstances` (RDS DB Instances), `Functions` (Lambda Functions), `Instances` (EC2 Instances), `ManagedResources` (EKS clusters, Application and Network Load Balancers, and EC2 Auto Scaling groups that are enabled for ARC zonal shift), `Nodegroups` (EKS Node groups), `Pods` (EKS Pods), `ReplicationGroups`(ElastiCache Redis Replication Groups), `Roles` (IAM Roles), `SpotInstances` (EC2 Spot Instances), `Subnets` (VPC Subnets), `Tables` (DynamoDB encrypted global tables), `Tasks` (ECS Tasks), `TransitGateways` (Transit gateways), `Volumes` (EBS Volumes). See the [documentation](https://docs.aws.amazon.com/fis/latest/userguide/action-sequence.html#action-targets) for more details.
  final String key;

  /// Target name, referencing a corresponding target.
  final String value;

  /// Creates a new [ExperimentTemplateActionTarget].
  /// [key] Target type. Valid values are `AutoScalingGroups` (EC2 Auto Scaling groups), `Buckets` (S3 Buckets), `Cluster` (EKS Cluster), `Clusters` (ECS Clusters), `DBInstances` (RDS DB Instances), `Functions` (Lambda Functions), `Instances` (EC2 Instances), `ManagedResources` (EKS clusters, Application and Network Load Balancers, and EC2 Auto Scaling groups that are enabled for ARC zonal shift), `Nodegroups` (EKS Node groups), `Pods` (EKS Pods), `ReplicationGroups`(ElastiCache Redis Replication Groups), `Roles` (IAM Roles), `SpotInstances` (EC2 Spot Instances), `Subnets` (VPC Subnets), `Tables` (DynamoDB encrypted global tables), `Tasks` (ECS Tasks), `TransitGateways` (Transit gateways), `Volumes` (EBS Volumes). See the [documentation](https://docs.aws.amazon.com/fis/latest/userguide/action-sequence.html#action-targets) for more details.
  /// [value] Target name, referencing a corresponding target.
  ExperimentTemplateActionTarget({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ExperimentTemplateActionTarget.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateActionTarget(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
