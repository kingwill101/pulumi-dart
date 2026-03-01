// ignore_for_file: unused_element, unnecessary_cast

class EndpointNetworkInterface {
  /// Identifier of the Elastic Network Interface (ENI).
  final String? networkInterfaceId;

  /// Creates a new [EndpointNetworkInterface].
  /// [networkInterfaceId] Identifier of the Elastic Network Interface (ENI).
  EndpointNetworkInterface({this.networkInterfaceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'networkInterfaceId': ?networkInterfaceId};
  }

  factory EndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterface(
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
    );
  }
}
