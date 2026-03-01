// ignore_for_file: unused_element, unnecessary_cast


/// package shipping details
class PackageShippingDetailsResponse {
  /// Name of the carrier.
  final String carrierName;
  /// Tracking Id of shipment.
  final String trackingId;
  /// Url where shipment can be tracked.
  final String trackingUrl;

  /// Creates a new [PackageShippingDetailsResponse].
  /// [carrierName] Name of the carrier.
  /// [trackingId] Tracking Id of shipment.
  /// [trackingUrl] Url where shipment can be tracked.
  PackageShippingDetailsResponse({
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
      carrierName: map['carrierName'] as String,
      trackingId: map['trackingId'] as String,
      trackingUrl: map['trackingUrl'] as String,
    );
  }
}

