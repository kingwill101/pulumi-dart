// ignore_for_file: unused_element, unnecessary_cast

/// All data that is specifically relevant to only network endpoint groups of type PRIVATE_SERVICE_CONNECT.
class NetworkEndpointGroupPscDataResponseComputeBeta {
  /// Address allocated from given subnetwork for PSC. This IP address acts as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  final String consumerPscAddress;

  /// The PSC connection id of the PSC Network Endpoint Group Consumer.
  final String pscConnectionId;

  /// The connection status of the PSC Forwarding Rule.
  final String pscConnectionStatus;

  /// Creates a new [NetworkEndpointGroupPscDataResponseComputeBeta].
  /// [consumerPscAddress] Address allocated from given subnetwork for PSC. This IP address acts as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  /// [pscConnectionId] The PSC connection id of the PSC Network Endpoint Group Consumer.
  /// [pscConnectionStatus] The connection status of the PSC Forwarding Rule.
  NetworkEndpointGroupPscDataResponseComputeBeta({
    required this.consumerPscAddress,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerPscAddress'] = consumerPscAddress;
    map['pscConnectionId'] = pscConnectionId;
    map['pscConnectionStatus'] = pscConnectionStatus;
    return map;
  }

  factory NetworkEndpointGroupPscDataResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return NetworkEndpointGroupPscDataResponseComputeBeta(
      consumerPscAddress: map['consumerPscAddress'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] as String,
    );
  }
}
