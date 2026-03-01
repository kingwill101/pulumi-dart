// ignore_for_file: unused_element, unnecessary_cast

import 'pav2_meter_details_response.dart';
import 'term_type_details_response.dart';

/// Holds billing meter details for each type of billing.
class BillingMeterDetailsResponse {
  /// Frequency of recurrence.
  final String frequency;
  /// Represents MeterDetails.
  final Pav2MeterDetailsResponse meterDetails;
  /// Represents Metering type (eg one-time or recurrent).
  final String meteringType;
  /// Represents Billing type name.
  final String name;
  /// Represent Term Type details.
  final TermTypeDetailsResponse termTypeDetails;

  /// Creates a new [BillingMeterDetailsResponse].
  /// [frequency] Frequency of recurrence.
  /// [meterDetails] Represents MeterDetails.
  /// [meteringType] Represents Metering type (eg one-time or recurrent).
  /// [name] Represents Billing type name.
  /// [termTypeDetails] Represent Term Type details.
  BillingMeterDetailsResponse({
    required this.frequency,
    required this.meterDetails,
    required this.meteringType,
    required this.name,
    required this.termTypeDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'meterDetails': meterDetails.toMap(),
      'meteringType': meteringType,
      'name': name,
      'termTypeDetails': termTypeDetails.toMap(),
    };
  }

  factory BillingMeterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return BillingMeterDetailsResponse(
      frequency: map['frequency'] as String,
      meterDetails: Pav2MeterDetailsResponse.fromMap((map['meterDetails'] as Map).cast<String, dynamic>()),
      meteringType: map['meteringType'] as String,
      name: map['name'] as String,
      termTypeDetails: TermTypeDetailsResponse.fromMap((map['termTypeDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

