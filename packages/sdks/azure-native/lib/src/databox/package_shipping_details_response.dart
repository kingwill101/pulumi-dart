// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// package shipping details
class PackageShippingDetailsResponse {
  /// Name of the carrier.
  final pulumi.Input<String> carrierName;
  /// Tracking Id of shipment.
  final pulumi.Input<String> trackingId;
  /// Url where shipment can be tracked.
  final pulumi.Input<String> trackingUrl;

  /// Creates a new [PackageShippingDetailsResponse].
  /// [carrierName] Name of the carrier.
  /// [trackingId] Tracking Id of shipment.
  /// [trackingUrl] Url where shipment can be tracked.
  const PackageShippingDetailsResponse({
    required this.carrierName,
    required this.trackingId,
    required this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': carrierName,
      'trackingId': trackingId,
      'trackingUrl': trackingUrl,
    };
  }

  factory PackageShippingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PackageShippingDetailsResponse(
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
      trackingId: pulumi.Input.fromValue(map['trackingId'] as String),
      trackingUrl: pulumi.Input.fromValue(map['trackingUrl'] as String),
    );
  }
}
