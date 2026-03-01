// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput {
  final bool enabled;
  final int volumeThroughput;

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
      enabled: map['enabled'] as bool,
      volumeThroughput: map['volumeThroughput'] as int,
    );
  }
}
