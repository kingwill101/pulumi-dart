// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the delivery package being shipped by the customer to the Microsoft data center.
class DeliveryPackageInformationResponse {
  /// The name of the carrier that is used to ship the import or export drives.
  final pulumi.Input<String> carrierName;
  /// The number of drives included in the package.
  final pulumi.Input<double>? driveCount;
  /// The date when the package is shipped.
  final pulumi.Input<String>? shipDate;
  /// The tracking number of the package.
  final pulumi.Input<String> trackingNumber;

  /// Creates a new [DeliveryPackageInformationResponse].
  /// [carrierName] The name of the carrier that is used to ship the import or export drives.
  /// [driveCount] The number of drives included in the package.
  /// [shipDate] The date when the package is shipped.
  /// [trackingNumber] The tracking number of the package.
  const DeliveryPackageInformationResponse({
    required this.carrierName,
    this.driveCount,
    this.shipDate,
    required this.trackingNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': carrierName,
      'driveCount': ?driveCount,
      'shipDate': ?shipDate,
      'trackingNumber': trackingNumber,
    };
  }

  factory DeliveryPackageInformationResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryPackageInformationResponse(
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
      driveCount: (() { final guardedValue = map['driveCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      shipDate: (() { final guardedValue = map['shipDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingNumber: pulumi.Input.fromValue(map['trackingNumber'] as String),
    );
  }
}

