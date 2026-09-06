// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tracking courier information.
class TrackingInfoResponse {
  /// Name of the carrier used in the delivery.
  final pulumi.Input<String?>? carrierName;
  /// Serial number of the device being tracked.
  final pulumi.Input<String?>? serialNumber;
  /// Tracking ID of the shipment.
  final pulumi.Input<String?>? trackingId;
  /// Tracking URL of the shipment.
  final pulumi.Input<String?>? trackingUrl;

  /// Creates a new [TrackingInfoResponse].
  /// [carrierName] Name of the carrier used in the delivery.
  /// [serialNumber] Serial number of the device being tracked.
  /// [trackingId] Tracking ID of the shipment.
  /// [trackingUrl] Tracking URL of the shipment.
  const TrackingInfoResponse({
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
      carrierName: (() { final guardedValue = map['carrierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingId: (() { final guardedValue = map['trackingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingUrl: (() { final guardedValue = map['trackingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
