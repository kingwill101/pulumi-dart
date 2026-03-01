// ignore_for_file: unused_element, unnecessary_cast


/// Reverse shipment details.
class ReverseShippingDetailsResponse {
  /// Carrier Name for display purpose. Not to be used for any processing.
  final String carrierDisplayName;
  /// Name of the carrier.
  final String carrierName;
  /// SAS key to download the reverse shipment label of the package.
  final String sasKeyForLabel;
  /// TrackingId of the package.
  final String trackingId;
  /// TrackingUrl of the package.
  final String trackingUrl;

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
      carrierDisplayName: map['carrierDisplayName'] as String,
      carrierName: map['carrierName'] as String,
      sasKeyForLabel: map['sasKeyForLabel'] as String,
      trackingId: map['trackingId'] as String,
      trackingUrl: map['trackingUrl'] as String,
    );
  }
}

