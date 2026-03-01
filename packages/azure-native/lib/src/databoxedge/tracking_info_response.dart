// ignore_for_file: unused_element, unnecessary_cast


/// Tracking courier information.
class TrackingInfoResponse {
  /// Name of the carrier used in the delivery.
  final String? carrierName;
  /// Serial number of the device being tracked.
  final String? serialNumber;
  /// Tracking ID of the shipment.
  final String? trackingId;
  /// Tracking URL of the shipment.
  final String? trackingUrl;

  /// Creates a new [TrackingInfoResponse].
  /// [carrierName] Name of the carrier used in the delivery.
  /// [serialNumber] Serial number of the device being tracked.
  /// [trackingId] Tracking ID of the shipment.
  /// [trackingUrl] Tracking URL of the shipment.
  TrackingInfoResponse({
    this.carrierName,
    this.serialNumber,
    this.trackingId,
    this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': ?carrierName,
      'serialNumber': ?serialNumber,
      'trackingId': ?trackingId,
      'trackingUrl': ?trackingUrl,
    };
  }

  factory TrackingInfoResponse.fromMap(Map<String, dynamic> map) {
    return TrackingInfoResponse(
      carrierName: map['carrierName'] == null ? null : map['carrierName'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      trackingId: map['trackingId'] == null ? null : map['trackingId'] as String,
      trackingUrl: map['trackingUrl'] == null ? null : map['trackingUrl'] as String,
    );
  }
}

