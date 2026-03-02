// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pav2_meter_details_response.dart';
import 'term_type_details_response.dart';

/// Holds billing meter details for each type of billing.
class BillingMeterDetailsResponse {
  /// Frequency of recurrence.
  final pulumi.Input<String> frequency;
  /// Represents MeterDetails.
  final pulumi.Input<Pav2MeterDetailsResponse> meterDetails;
  /// Represents Metering type (eg one-time or recurrent).
  final pulumi.Input<String> meteringType;
  /// Represents Billing type name.
  final pulumi.Input<String> name;
  /// Represent Term Type details.
  final pulumi.Input<TermTypeDetailsResponse> termTypeDetails;

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
      'meterDetails': pulumi.Input.mapInputValue<Pav2MeterDetailsResponse, Map<String, dynamic>>(meterDetails, (value) => value.toMap()),
      'meteringType': meteringType,
      'name': name,
      'termTypeDetails': pulumi.Input.mapInputValue<TermTypeDetailsResponse, Map<String, dynamic>>(termTypeDetails, (value) => value.toMap()),
    };
  }

  factory BillingMeterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return BillingMeterDetailsResponse(
      frequency: (map['frequency'] as String).input(),
      meterDetails: (Pav2MeterDetailsResponse.fromMap((map['meterDetails'] as Map).cast<String, dynamic>())).input(),
      meteringType: (map['meteringType'] as String).input(),
      name: (map['name'] as String).input(),
      termTypeDetails: (TermTypeDetailsResponse.fromMap((map['termTypeDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

