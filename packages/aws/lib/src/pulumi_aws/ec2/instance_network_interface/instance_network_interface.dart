// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkInterface {
  /// Whether or not to delete the network interface on instance termination. Defaults to `false`. Currently, the only valid value is `false`, as this is only supported when creating new network interfaces when launching an instance.
  final bool? deleteOnTermination;

  /// Integer index of the network interface attachment. Limited by instance type.
  final int deviceIndex;

  /// Integer index of the network card. Limited by instance type. The default index is `0`.
  final int? networkCardIndex;

  /// ID of the network interface to attach.
  final String networkInterfaceId;

  InstanceNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    this.networkCardIndex,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    map['deviceIndex'] = deviceIndex;
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    return map;
  }

  factory InstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceIndex: map['deviceIndex'] as int,
      networkCardIndex: map['networkCardIndex'] == null
          ? null
          : map['networkCardIndex'] as int,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
