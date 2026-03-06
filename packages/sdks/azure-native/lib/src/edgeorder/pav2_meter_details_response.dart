// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing type PAV2 meter details.
class Pav2MeterDetailsResponse {
  /// Represents billing type.
  /// Expected value is 'Pav2'.
  final pulumi.Input<String> billingType;
  /// Charging type.
  final pulumi.Input<String> chargingType;
  /// Validation status of requested data center and transport.
  final pulumi.Input<String> meterGuid;
  /// Billing unit applicable for Pav2 billing.
  final pulumi.Input<double> multiplier;

  /// Creates a new [Pav2MeterDetailsResponse].
  /// [billingType] Represents billing type.
  /// [chargingType] Charging type.
  /// [meterGuid] Validation status of requested data center and transport.
  /// [multiplier] Billing unit applicable for Pav2 billing.
  const Pav2MeterDetailsResponse({
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
      billingType: pulumi.Input.fromValue(map['billingType'] as String),
      chargingType: pulumi.Input.fromValue(map['chargingType'] as String),
      meterGuid: pulumi.Input.fromValue(map['meterGuid'] as String),
      multiplier: pulumi.Input.fromValue(map['multiplier'] as double),
    );
  }
}

