// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_meter_details_response.dart';

/// Cost information for the product system.
class CostInformationResponse {
  /// Default url to display billing information.
  final String billingInfoUrl;
  /// Details on the various billing aspects for the product system.
  final List<BillingMeterDetailsResponse> billingMeterDetails;

  /// Creates a new [CostInformationResponse].
  /// [billingInfoUrl] Default url to display billing information.
  /// [billingMeterDetails] Details on the various billing aspects for the product system.
  CostInformationResponse({
    required this.billingInfoUrl,
    required this.billingMeterDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingInfoUrl': billingInfoUrl,
      'billingMeterDetails': pulumi.Input.encodeList<BillingMeterDetailsResponse, Map<String, dynamic>>(billingMeterDetails, (value) => value.toMap()),
    };
  }

  factory CostInformationResponse.fromMap(Map<String, dynamic> map) {
    return CostInformationResponse(
      billingInfoUrl: map['billingInfoUrl'] as String,
      billingMeterDetails: pulumi.Input.decodeList<BillingMeterDetailsResponse>(map['billingMeterDetails'], (value) => BillingMeterDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

