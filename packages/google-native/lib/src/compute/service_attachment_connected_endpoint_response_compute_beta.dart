// ignore_for_file: unused_element, unnecessary_cast


/// [Output Only] A connection connected to this service attachment.
class ServiceAttachmentConnectedEndpointResponseComputeBeta {
  /// The url of the consumer network.
  final String consumerNetwork;
  /// The url of a connected endpoint.
  final String endpoint;
  /// The PSC connection id of the connected endpoint.
  final String pscConnectionId;
  /// The status of a connected endpoint to this service attachment.
  final String status;

  /// Creates a new [ServiceAttachmentConnectedEndpointResponseComputeBeta].
  /// [consumerNetwork] The url of the consumer network.
  /// [endpoint] The url of a connected endpoint.
  /// [pscConnectionId] The PSC connection id of the connected endpoint.
  /// [status] The status of a connected endpoint to this service attachment.
  ServiceAttachmentConnectedEndpointResponseComputeBeta({
    required this.consumerNetwork,
    required this.endpoint,
    required this.pscConnectionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'endpoint': endpoint,
      'pscConnectionId': pscConnectionId,
      'status': status,
    };
  }

  factory ServiceAttachmentConnectedEndpointResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpointResponseComputeBeta(
      consumerNetwork: map['consumerNetwork'] as String,
      endpoint: map['endpoint'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      status: map['status'] as String,
    );
  }
}

