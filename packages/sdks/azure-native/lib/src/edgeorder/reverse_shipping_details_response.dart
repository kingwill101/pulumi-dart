// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reverse shipment details.
class ReverseShippingDetailsResponse {
  /// Carrier Name for display purpose. Not to be used for any processing.
  final pulumi.Input<String> carrierDisplayName;
  /// Name of the carrier.
  final pulumi.Input<String> carrierName;
  /// SAS key to download the reverse shipment label of the package.
  final pulumi.Input<String> sasKeyForLabel;
  /// TrackingId of the package.
  final pulumi.Input<String> trackingId;
  /// TrackingUrl of the package.
  final pulumi.Input<String> trackingUrl;

  /// Creates a new [ReverseShippingDetailsResponse].
  /// [carrierDisplayName] Carrier Name for display purpose. Not to be used for any processing.
  /// [carrierName] Name of the carrier.
  /// [sasKeyForLabel] SAS key to download the reverse shipment label of the package.
  /// [trackingId] TrackingId of the package.
  /// [trackingUrl] TrackingUrl of the package.
  ReverseShippingDetailsResponse({
    required this.carrierDisplayName,
    required this.carrierName,
    required this.sasKeyForLabel,
    required this.trackingId,
    required this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierDisplayName': carrierDisplayName,
      'carrierName': carrierName,
      'sasKeyForLabel': sasKeyForLabel,
      'trackingId': trackingId,
      'trackingUrl': trackingUrl,
    };
  }

  factory ReverseShippingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReverseShippingDetailsResponse(
      carrierDisplayName: (map['carrierDisplayName'] as String).input(),
      carrierName: (map['carrierName'] as String).input(),
      sasKeyForLabel: (map['sasKeyForLabel'] as String).input(),
      trackingId: (map['trackingId'] as String).input(),
      trackingUrl: (map['trackingUrl'] as String).input(),
    );
  }
}

