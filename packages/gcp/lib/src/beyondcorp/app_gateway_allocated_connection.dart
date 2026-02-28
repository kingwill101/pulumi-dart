// ignore_for_file: unused_element, unnecessary_cast

class AppGatewayAllocatedConnection {
  /// The ingress port of an allocated connection.
  final int? ingressPort;

  /// The PSC uri of an allocated connection.
  final String? pscUri;

  /// Creates a new [AppGatewayAllocatedConnection].
  /// [ingressPort] The ingress port of an allocated connection.
  /// [pscUri] The PSC uri of an allocated connection.
  AppGatewayAllocatedConnection({
    this.ingressPort,
    this.pscUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingressPortValue = ingressPort;
    if (ingressPortValue != null) {
      map['ingressPort'] = ingressPortValue;
    }
    final pscUriValue = pscUri;
    if (pscUriValue != null) {
      map['pscUri'] = pscUriValue;
    }
    return map;
  }

  factory AppGatewayAllocatedConnection.fromMap(Map<String, dynamic> map) {
    return AppGatewayAllocatedConnection(
      ingressPort:
          map['ingressPort'] == null ? null : map['ingressPort'] as int,
      pscUri: map['pscUri'] == null ? null : map['pscUri'] as String,
    );
  }
}
