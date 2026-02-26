// ignore_for_file: unused_element, unnecessary_cast

/// Allocated connection of the AppGateway.
class AllocatedConnectionResponse2 {
  /// The ingress port of an allocated connection
  final int ingressPort;

  /// The PSC uri of an allocated connection
  final String pscUri;

  AllocatedConnectionResponse2({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingressPort'] = ingressPort;
    map['pscUri'] = pscUri;
    return map;
  }

  factory AllocatedConnectionResponse2.fromMap(Map<String, dynamic> map) {
    return AllocatedConnectionResponse2(
      ingressPort: map['ingressPort'] as int,
      pscUri: map['pscUri'] as String,
    );
  }
}
