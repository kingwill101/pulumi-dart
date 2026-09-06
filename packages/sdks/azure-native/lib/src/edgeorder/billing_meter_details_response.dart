// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'term_type_details_response.dart';

/// Holds billing meter details for each type of billing.
class BillingMeterDetailsResponse {
  /// Frequency of recurrence.
  final pulumi.Input<String> frequency;
  /// Represents MeterDetails.
  final pulumi.Input<dynamic> meterDetails;
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
  const BillingMeterDetailsResponse({
    required this.frequency,
    required this.meterDetails,
    required this.meteringType,
    required this.name,
    required this.termTypeDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'meterDetails': meterDetails,
      'meteringType': meteringType,
      'name': name,
      'termTypeDetails': pulumi.Input.mapInputValue<TermTypeDetailsResponse, Map<String, dynamic>>(termTypeDetails, (value) => value.toMap()),
    };
  }

  factory BillingMeterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return BillingMeterDetailsResponse(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      meterDetails: pulumi.Input.fromValue(map['meterDetails']),
      meteringType: pulumi.Input.fromValue(map['meteringType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      termTypeDetails: pulumi.Input.fromValue(TermTypeDetailsResponse.fromMap((map['termTypeDetails']! as Map).cast<String, dynamic>())),
    );
  }
}
