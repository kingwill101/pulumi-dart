// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestPrimaryNetworkInterface {
  /// Whether the network interface will be deleted when the instance terminates.
  final bool? deleteOnTermination;

  /// ID of the network interface to attach.
  final String? networkInterfaceId;

  /// Creates a new [SpotInstanceRequestPrimaryNetworkInterface].
  /// [deleteOnTermination] Whether the network interface will be deleted when the instance terminates.
  /// [networkInterfaceId] ID of the network interface to attach.
  SpotInstanceRequestPrimaryNetworkInterface({
    this.deleteOnTermination,
    this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    return map;
  }

  factory SpotInstanceRequestPrimaryNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return SpotInstanceRequestPrimaryNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
    );
  }
}
