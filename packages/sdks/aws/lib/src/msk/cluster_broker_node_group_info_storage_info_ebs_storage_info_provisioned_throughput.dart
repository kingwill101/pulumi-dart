// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  final pulumi.Input<bool?>? enabled;
  /// Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is `250`. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following [documentation on throughput bottlenecks](https://docs.aws.amazon.com/msk/latest/developerguide/msk-provision-throughput.html#throughput-bottlenecks)
  final pulumi.Input<int?>? volumeThroughput;

  /// Creates a new [ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput].
  /// [enabled] Optional.
  /// [volumeThroughput] Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is `250`. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following [documentation on throughput bottlenecks](https://docs.aws.amazon.com/msk/latest/developerguide/msk-provision-throughput.html#throughput-bottlenecks)
  const ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput({
    this.enabled,
    this.volumeThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'volumeThroughput': ?volumeThroughput,
    };
  }

  factory ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeThroughput: (() { final guardedValue = map['volumeThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
