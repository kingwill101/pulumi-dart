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

  /// Creates a new [InterconnectCircuitInfo].
  /// [customerDemarcId] (Output)
  /// [googleCircuitId] (Output)
  /// [googleDemarcId] (Output)
  InterconnectCircuitInfo({
    this.customerDemarcId,
    this.googleCircuitId,
    this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDemarcId': ?customerDemarcId,
      'googleCircuitId': ?googleCircuitId,
      'googleDemarcId': ?googleDemarcId,
    };
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
