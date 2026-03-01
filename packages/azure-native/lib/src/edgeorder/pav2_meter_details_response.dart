// ignore_for_file: unused_element, unnecessary_cast


/// Billing type PAV2 meter details.
class Pav2MeterDetailsResponse {
  /// Represents billing type.
  /// Expected value is 'Pav2'.
  final String billingType;
  /// Charging type.
  final String chargingType;
  /// Validation status of requested data center and transport.
  final String meterGuid;
  /// Billing unit applicable for Pav2 billing.
  final double multiplier;

  /// Creates a new [Pav2MeterDetailsResponse].
  /// [billingType] Represents billing type.
  /// [chargingType] Charging type.
  /// [meterGuid] Validation status of requested data center and transport.
  /// [multiplier] Billing unit applicable for Pav2 billing.
  Pav2MeterDetailsResponse({
    required this.billingType,
    required this.chargingType,
    required this.meterGuid,
    required this.multiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': billingType,
      'chargingType': chargingType,
      'meterGuid': meterGuid,
      'multiplier': multiplier,
    };
  }

  factory Pav2MeterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return Pav2MeterDetailsResponse(
      billingType: map['billingType'] as String,
      chargingType: map['chargingType'] as String,
      meterGuid: map['meterGuid'] as String,
      multiplier: map['multiplier'] as double,
    );
  }
}

