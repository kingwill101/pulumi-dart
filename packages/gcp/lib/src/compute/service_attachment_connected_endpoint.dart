// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentConnectedEndpoint {
  /// (Output)
  /// The url of the consumer network.
  final String? consumerNetwork;

  /// (Output)
  /// The URL of the consumer forwarding rule.
  final String? endpoint;

  /// (Output)
  /// The nat IPs of the connected endpoint.
  final List<String>? natIps;

  /// (Output)
  /// The number of consumer Network Connectivity Center spokes that the connected Private Service Connect endpoint has propagated to.
  final int? propagatedConnectionCount;

  /// (Output)
  /// The PSC connection id of the connected endpoint.
  final String? pscConnectionId;

  /// (Output)
  /// The status of the connection from the consumer forwarding rule to
  /// this service attachment.
  final String? status;

  /// Creates a new [ServiceAttachmentConnectedEndpoint].
  /// [consumerNetwork] (Output)
  /// [endpoint] (Output)
  /// [natIps] (Output)
  /// [propagatedConnectionCount] (Output)
  /// [pscConnectionId] (Output)
  /// [status] (Output)
  ServiceAttachmentConnectedEndpoint({
    this.consumerNetwork,
    this.endpoint,
    this.natIps,
    this.propagatedConnectionCount,
    this.pscConnectionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerNetworkValue = consumerNetwork;
    if (consumerNetworkValue != null) {
      map['consumerNetwork'] = consumerNetworkValue;
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    final natIpsValue = natIps;
    if (natIpsValue != null) {
      map['natIps'] = natIpsValue;
    }
    final propagatedConnectionCountValue = propagatedConnectionCount;
    if (propagatedConnectionCountValue != null) {
      map['propagatedConnectionCount'] = propagatedConnectionCountValue;
    }
    final pscConnectionIdValue = pscConnectionId;
    if (pscConnectionIdValue != null) {
      map['pscConnectionId'] = pscConnectionIdValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory ServiceAttachmentConnectedEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConnectedEndpoint(
      consumerNetwork: map['consumerNetwork'] == null
          ? null
          : map['consumerNetwork'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      natIps:
          map['natIps'] == null ? null : (map['natIps'] as List).cast<String>(),
      propagatedConnectionCount: map['propagatedConnectionCount'] == null
          ? null
          : map['propagatedConnectionCount'] as int,
      pscConnectionId: map['pscConnectionId'] == null
          ? null
          : map['pscConnectionId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
