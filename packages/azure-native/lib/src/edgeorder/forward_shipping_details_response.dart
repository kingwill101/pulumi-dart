// ignore_for_file: unused_element, unnecessary_cast


/// Forward shipment details.
class ForwardShippingDetailsResponse {
  /// Carrier Name for display purpose. Not to be used for any processing.
  final String carrierDisplayName;
  /// Name of the carrier.
  final String carrierName;
  /// TrackingId of the package.
  final String trackingId;
  /// TrackingUrl of the package.
  final String trackingUrl;

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
      carrierDisplayName: map['carrierDisplayName'] as String,
      carrierName: map['carrierName'] as String,
      trackingId: map['trackingId'] as String,
      trackingUrl: map['trackingUrl'] as String,
    );
  }
}

