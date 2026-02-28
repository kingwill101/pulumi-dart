// ignore_for_file: unused_element, unnecessary_cast

class InstancePrimaryNetworkInterface {
  /// Whether the network interface will be deleted when the instance terminates.
  final bool? deleteOnTermination;

  /// ID of the network interface to attach.
  final String networkInterfaceId;

  /// Creates a new [InstancePrimaryNetworkInterface].
  /// [deleteOnTermination] Whether the network interface will be deleted when the instance terminates.
  /// [networkInterfaceId] ID of the network interface to attach.
  InstancePrimaryNetworkInterface({
    this.deleteOnTermination,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    return map;
  }

  factory InstancePrimaryNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstancePrimaryNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
