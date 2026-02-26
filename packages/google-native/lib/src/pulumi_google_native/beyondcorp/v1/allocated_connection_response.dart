// ignore_for_file: unused_element, unnecessary_cast

/// Allocated connection of the AppGateway.
class AllocatedConnectionResponse {
  /// The ingress port of an allocated connection
  final int ingressPort;

  /// The PSC uri of an allocated connection
  final String pscUri;

  AllocatedConnectionResponse({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingressPort'] = ingressPort;
    map['pscUri'] = pscUri;
    return map;
  }

  factory AllocatedConnectionResponse.fromMap(Map<String, dynamic> map) {
    return AllocatedConnectionResponse(
      ingressPort: map['ingressPort'] as int,
      pscUri: map['pscUri'] as String,
    );
  }
}
