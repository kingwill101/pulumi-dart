// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// package carrier info
class PackageCarrierInfoResponse {
  /// Name of the carrier.
  final pulumi.Input<String>? carrierName;

  /// Tracking Id of shipment.
  final pulumi.Input<String>? trackingId;

  /// Creates a new [PackageCarrierInfoResponse].
  /// [carrierName] Name of the carrier.
  /// [trackingId] Tracking Id of shipment.
  PackageCarrierInfoResponse({this.carrierName, this.trackingId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': ?carrierName,
      'trackingId': ?trackingId,
    };
  }

  factory PackageCarrierInfoResponse.fromMap(Map<String, dynamic> map) {
    return PackageCarrierInfoResponse(
      carrierName: (() {
        final guardedValue = map['carrierName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trackingId: (() {
        final guardedValue = map['trackingId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
