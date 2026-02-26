// ignore_for_file: unused_element, unnecessary_cast

class InterconnectCircuitInfo {
  /// (Output)
  /// Customer-side demarc ID for this circuit.
  final String? customerDemarcId;

  /// (Output)
  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final String? googleCircuitId;

  /// (Output)
  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by
  /// Google to the customer in the LOA.
  final String? googleDemarcId;

  InterconnectCircuitInfo({
    this.customerDemarcId,
    this.googleCircuitId,
    this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerDemarcIdValue = customerDemarcId;
    if (customerDemarcIdValue != null) {
      map['customerDemarcId'] = customerDemarcIdValue;
    }
    final googleCircuitIdValue = googleCircuitId;
    if (googleCircuitIdValue != null) {
      map['googleCircuitId'] = googleCircuitIdValue;
    }
    final googleDemarcIdValue = googleDemarcId;
    if (googleDemarcIdValue != null) {
      map['googleDemarcId'] = googleDemarcIdValue;
    }
    return map;
  }

  factory InterconnectCircuitInfo.fromMap(Map<String, dynamic> map) {
    return InterconnectCircuitInfo(
      customerDemarcId: map['customerDemarcId'] == null
          ? null
          : map['customerDemarcId'] as String,
      googleCircuitId: map['googleCircuitId'] == null
          ? null
          : map['googleCircuitId'] as String,
      googleDemarcId: map['googleDemarcId'] == null
          ? null
          : map['googleDemarcId'] as String,
    );
  }
}
