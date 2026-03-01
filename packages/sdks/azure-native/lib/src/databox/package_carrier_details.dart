// ignore_for_file: unused_element, unnecessary_cast


/// Package carrier details.
class PackageCarrierDetails {
  /// Carrier Account Number of customer for customer disk.
  final String? carrierAccountNumber;
  /// Name of the carrier.
  final String? carrierName;
  /// Tracking Id of shipment.
  final String? trackingId;

  /// Creates a new [PackageCarrierDetails].
  /// [carrierAccountNumber] Carrier Account Number of customer for customer disk.
  /// [carrierName] Name of the carrier.
  /// [trackingId] Tracking Id of shipment.
  PackageCarrierDetails({
    this.carrierAccountNumber,
    this.carrierName,
    this.trackingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierAccountNumber': ?carrierAccountNumber,
      'carrierName': ?carrierName,
      'trackingId': ?trackingId,
    };
  }

  factory PackageCarrierDetails.fromMap(Map<String, dynamic> map) {
    return PackageCarrierDetails(
      carrierAccountNumber: map['carrierAccountNumber'] == null ? null : map['carrierAccountNumber'] as String,
      carrierName: map['carrierName'] == null ? null : map['carrierName'] as String,
      trackingId: map['trackingId'] == null ? null : map['trackingId'] as String,
    );
  }
}

