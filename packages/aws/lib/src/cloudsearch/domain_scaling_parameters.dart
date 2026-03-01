// ignore_for_file: unused_element, unnecessary_cast

class DomainScalingParameters {
  /// The instance type that you want to preconfigure for your domain. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_ScalingParameters.html) for valid values.
  final String? desiredInstanceType;

  /// The number of partitions you want to preconfigure for your domain. Only valid when you select `search.2xlarge` as the instance type.
  final int? desiredPartitionCount;

  /// The number of replicas you want to preconfigure for each index partition.
  final int? desiredReplicationCount;

  /// Creates a new [DomainScalingParameters].
  /// [desiredInstanceType] The instance type that you want to preconfigure for your domain. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_ScalingParameters.html) for valid values.
  /// [desiredPartitionCount] The number of partitions you want to preconfigure for your domain. Only valid when you select `search.2xlarge` as the instance type.
  /// [desiredReplicationCount] The number of replicas you want to preconfigure for each index partition.
  DomainScalingParameters({
    this.desiredInstanceType,
    this.desiredPartitionCount,
    this.desiredReplicationCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredInstanceType': ?desiredInstanceType,
      'desiredPartitionCount': ?desiredPartitionCount,
      'desiredReplicationCount': ?desiredReplicationCount,
    };
  }

  factory DomainScalingParameters.fromMap(Map<String, dynamic> map) {
    return DomainScalingParameters(
      desiredInstanceType: map['desiredInstanceType'] == null
          ? null
          : map['desiredInstanceType'] as String,
      desiredPartitionCount: map['desiredPartitionCount'] == null
          ? null
          : map['desiredPartitionCount'] as int,
      desiredReplicationCount: map['desiredReplicationCount'] == null
          ? null
          : map['desiredReplicationCount'] as int,
    );
  }
}
