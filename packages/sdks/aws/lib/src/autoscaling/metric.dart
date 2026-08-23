/// See https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html
enum Metric {
  valueGroupMinSize("GroupMinSize"),
  valueGroupMaxSize("GroupMaxSize"),
  valueGroupDesiredCapacity("GroupDesiredCapacity"),
  valueGroupInServiceInstances("GroupInServiceInstances"),
  valueGroupInServiceCapacity("GroupInServiceCapacity"),
  valueGroupPendingInstances("GroupPendingInstances"),
  valueGroupPendingCapacity("GroupPendingCapacity"),
  valueGroupStandbyInstances("GroupStandbyInstances"),
  valueGroupStandbyCapacity("GroupStandbyCapacity"),
  valueGroupTerminatingInstances("GroupTerminatingInstances"),
  valueGroupTerminatingCapacity("GroupTerminatingCapacity"),
  valueGroupTotalInstances("GroupTotalInstances"),
  valueGroupTotalCapacity("GroupTotalCapacity"),
  valueWarmPoolDesiredCapacity("WarmPoolDesiredCapacity"),
  valueWarmPoolWarmedCapacity("WarmPoolWarmedCapacity"),
  valueWarmPoolPendingCapacity("WarmPoolPendingCapacity"),
  valueWarmPoolTerminatingCapacity("WarmPoolTerminatingCapacity"),
  valueWarmPoolTotalCapacity("WarmPoolTotalCapacity"),
  valueGroupAndWarmPoolDesiredCapacity("GroupAndWarmPoolDesiredCapacity"),
  valueGroupAndWarmPoolTotalCapacity("GroupAndWarmPoolTotalCapacity");

  const Metric(this.wireValue);
  final String wireValue;

  static Metric fromValue(String value) {
    for (final item in Metric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Metric value: $value');
  }
}
