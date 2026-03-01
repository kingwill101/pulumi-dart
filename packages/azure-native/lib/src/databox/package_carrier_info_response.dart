// ignore_for_file: unused_element, unnecessary_cast


/// package carrier info
class PackageCarrierInfoResponse {
  /// Name of the carrier.
  final String? carrierName;
  /// Tracking Id of shipment.
  final String? trackingId;

  /// Creates a new [PackageCarrierInfoResponse].
  /// [carrierName] Name of the carrier.
  /// [trackingId] Tracking Id of shipment.
  PackageCarrierInfoResponse({
    this.carrierName,
    this.trackingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': ?carrierName,
      'trackingId': ?trackingId,
    };
  }

  factory PackageCarrierInfoResponse.fromMap(Map<String, dynamic> map) {
    return PackageCarrierInfoResponse(
      carrierName: map['carrierName'] == null ? null : map['carrierName'] as String,
      trackingId: map['trackingId'] == null ? null : map['trackingId'] as String,
    );
  }
}

