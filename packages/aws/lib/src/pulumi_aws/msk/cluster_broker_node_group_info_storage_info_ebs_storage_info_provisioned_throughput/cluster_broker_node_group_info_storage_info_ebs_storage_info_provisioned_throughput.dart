// ignore_for_file: unused_element, unnecessary_cast

class ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  final bool? enabled;

  /// Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is `250`. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following [documentation on throughput bottlenecks](https://docs.aws.amazon.com/msk/latest/developerguide/msk-provision-throughput.html#throughput-bottlenecks)
  final int? volumeThroughput;

  ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput({
    this.enabled,
    this.volumeThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final volumeThroughputValue = volumeThroughput;
    if (volumeThroughputValue != null) {
      map['volumeThroughput'] = volumeThroughputValue;
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      volumeThroughput: map['volumeThroughput'] == null
          ? null
          : map['volumeThroughput'] as int,
    );
  }
}
