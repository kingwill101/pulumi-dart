// ignore_for_file: unused_element, unnecessary_cast

class GetAppGatewayAllocatedConnection {
  /// The ingress port of an allocated connection.
  final int ingressPort;

  /// The PSC uri of an allocated connection.
  final String pscUri;

  GetAppGatewayAllocatedConnection({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingressPort'] = ingressPort;
    map['pscUri'] = pscUri;
    return map;
  }

  factory GetAppGatewayAllocatedConnection.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayAllocatedConnection(
      ingressPort: map['ingressPort'] as int,
      pscUri: map['pscUri'] as String,
    );
  }
}
