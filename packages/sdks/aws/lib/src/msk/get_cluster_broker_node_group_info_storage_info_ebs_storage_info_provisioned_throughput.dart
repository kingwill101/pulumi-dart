// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  /// Whether provisioned throughput is enabled.
  final pulumi.Input<bool> enabled;
  /// Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second.
  final pulumi.Input<int> volumeThroughput;

  /// Creates a new [GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput].
  /// [enabled] Whether provisioned throughput is enabled.
  /// [volumeThroughput] Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second.
  const GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput({
    required this.enabled,
    required this.volumeThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'volumeThroughput': volumeThroughput,
    };
  }

  factory GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      volumeThroughput: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['volumeThroughput'])),
    );
  }
}
