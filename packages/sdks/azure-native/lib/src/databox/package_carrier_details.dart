// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Package carrier details.
class PackageCarrierDetails {
  /// Carrier Account Number of customer for customer disk.
  final pulumi.Input<String>? carrierAccountNumber;
  /// Name of the carrier.
  final pulumi.Input<String>? carrierName;
  /// Tracking Id of shipment.
  final pulumi.Input<String>? trackingId;

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
      carrierAccountNumber: (() { final guardedValue = map['carrierAccountNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      carrierName: (() { final guardedValue = map['carrierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingId: (() { final guardedValue = map['trackingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

