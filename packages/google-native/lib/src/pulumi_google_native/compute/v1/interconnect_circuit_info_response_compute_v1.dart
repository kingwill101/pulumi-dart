// ignore_for_file: unused_element, unnecessary_cast

/// Describes a single physical circuit between the Customer and Google. CircuitInfo objects are created by Google, so all fields are output only.
class InterconnectCircuitInfoResponseComputeV1 {
  /// Customer-side demarc ID for this circuit.
  final String customerDemarcId;

  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final String googleCircuitId;

  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  final String googleDemarcId;

  InterconnectCircuitInfoResponseComputeV1({
    required this.customerDemarcId,
    required this.googleCircuitId,
    required this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerDemarcId'] = customerDemarcId;
    map['googleCircuitId'] = googleCircuitId;
    map['googleDemarcId'] = googleDemarcId;
    return map;
  }

  factory InterconnectCircuitInfoResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InterconnectCircuitInfoResponseComputeV1(
      customerDemarcId: map['customerDemarcId'] as String,
      googleCircuitId: map['googleCircuitId'] as String,
      googleDemarcId: map['googleDemarcId'] as String,
    );
  }
}
