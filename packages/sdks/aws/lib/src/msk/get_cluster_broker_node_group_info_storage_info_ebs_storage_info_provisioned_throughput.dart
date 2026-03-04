// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<int> volumeThroughput;

  /// Creates a new [GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput].
  /// [enabled] Required.
  /// [volumeThroughput] Required.
  GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput({
    required this.enabled,
    required this.volumeThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'volumeThroughput': volumeThroughput,
    };
  }

  factory GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      volumeThroughput: pulumi.Input.fromValue(map['volumeThroughput'] as int),
    );
  }
}
