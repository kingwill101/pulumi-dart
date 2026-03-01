// ignore_for_file: unused_element, unnecessary_cast

/// Describes a single physical circuit between the Customer and Google. CircuitInfo objects are created by Google, so all fields are output only.
class InterconnectCircuitInfoResponseComputeBeta {
  /// Customer-side demarc ID for this circuit.
  final String customerDemarcId;

  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final String googleCircuitId;

  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  final String googleDemarcId;

  /// Creates a new [InterconnectCircuitInfoResponseComputeBeta].
  /// [customerDemarcId] Customer-side demarc ID for this circuit.
  /// [googleCircuitId] Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  /// [googleDemarcId] Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  InterconnectCircuitInfoResponseComputeBeta({
    required this.customerDemarcId,
    required this.googleCircuitId,
    required this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDemarcId': customerDemarcId,
      'googleCircuitId': googleCircuitId,
      'googleDemarcId': googleDemarcId,
    };
  }

  factory InterconnectCircuitInfoResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectCircuitInfoResponseComputeBeta(
      customerDemarcId: map['customerDemarcId'] as String,
      googleCircuitId: map['googleCircuitId'] as String,
      googleDemarcId: map['googleDemarcId'] as String,
    );
  }
}
