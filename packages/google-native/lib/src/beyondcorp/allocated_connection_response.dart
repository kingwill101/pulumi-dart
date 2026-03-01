// ignore_for_file: unused_element, unnecessary_cast

/// Allocated connection of the AppGateway.
class AllocatedConnectionResponse {
  /// The ingress port of an allocated connection
  final int ingressPort;

  /// The PSC uri of an allocated connection
  final String pscUri;

  /// Creates a new [AllocatedConnectionResponse].
  /// [ingressPort] The ingress port of an allocated connection
  /// [pscUri] The PSC uri of an allocated connection
  AllocatedConnectionResponse({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ingressPort': ingressPort, 'pscUri': pscUri};
  }

  factory AllocatedConnectionResponse.fromMap(Map<String, dynamic> map) {
    return AllocatedConnectionResponse(
      ingressPort: map['ingressPort'] as int,
      pscUri: map['pscUri'] as String,
    );
  }
}
