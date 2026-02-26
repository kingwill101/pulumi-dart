// ignore_for_file: unused_element, unnecessary_cast

/// [Output Only] A connection connected to this service attachment.
class ServiceAttachmentConnectedEndpointResponse3 {
  /// The url of the consumer network.
  final String consumerNetwork;

  /// The url of a connected endpoint.
  final String endpoint;

  /// The PSC connection id of the connected endpoint.
  final String pscConnectionId;

  /// The status of a connected endpoint to this service attachment.
  final String status;

  ServiceAttachmentConnectedEndpointResponse3({
    required this.consumerNetwork,
    required this.endpoint,
    required this.pscConnectionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerNetwork'] = consumerNetwork;
    map['endpoint'] = endpoint;
    map['pscConnectionId'] = pscConnectionId;
    map['status'] = status;
    return map;
  }

  factory ServiceAttachmentConnectedEndpointResponse3.fromMap(
      Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpointResponse3(
      consumerNetwork: map['consumerNetwork'] as String,
      endpoint: map['endpoint'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      status: map['status'] as String,
    );
  }
}
