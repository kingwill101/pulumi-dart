// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forward shipment details.
class ForwardShippingDetailsResponse {
  /// Carrier Name for display purpose. Not to be used for any processing.
  final pulumi.Input<String> carrierDisplayName;

  /// Name of the carrier.
  final pulumi.Input<String> carrierName;

  /// TrackingId of the package.
  final pulumi.Input<String> trackingId;

  /// TrackingUrl of the package.
  final pulumi.Input<String> trackingUrl;

  /// Creates a new [ForwardShippingDetailsResponse].
  /// [carrierDisplayName] Carrier Name for display purpose. Not to be used for any processing.
  /// [carrierName] Name of the carrier.
  /// [trackingId] TrackingId of the package.
  /// [trackingUrl] TrackingUrl of the package.
  ForwardShippingDetailsResponse({
    required this.carrierDisplayName,
    required this.carrierName,
    required this.trackingId,
    required this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierDisplayName': carrierDisplayName,
      'carrierName': carrierName,
      'trackingId': trackingId,
      'trackingUrl': trackingUrl,
    };
  }

  factory ForwardShippingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ForwardShippingDetailsResponse(
      carrierDisplayName: pulumi.Input.fromValue(
        map['carrierDisplayName'] as String,
      ),
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
      trackingId: pulumi.Input.fromValue(map['trackingId'] as String),
      trackingUrl: pulumi.Input.fromValue(map['trackingUrl'] as String),
    );
  }
}
