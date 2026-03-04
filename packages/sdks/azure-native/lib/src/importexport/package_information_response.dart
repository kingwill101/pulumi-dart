// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the package being shipped by the customer to the Microsoft data center.
class PackageInformationResponse {
  /// The name of the carrier that is used to ship the import or export drives.
  final pulumi.Input<String> carrierName;

  /// The number of drives included in the package.
  final pulumi.Input<double> driveCount;

  /// The date when the package is shipped.
  final pulumi.Input<String> shipDate;

  /// The tracking number of the package.
  final pulumi.Input<String> trackingNumber;

  /// Creates a new [PackageInformationResponse].
  /// [carrierName] The name of the carrier that is used to ship the import or export drives.
  /// [driveCount] The number of drives included in the package.
  /// [shipDate] The date when the package is shipped.
  /// [trackingNumber] The tracking number of the package.
  PackageInformationResponse({
    required this.carrierName,
    required this.driveCount,
    required this.shipDate,
    required this.trackingNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierName': carrierName,
      'driveCount': driveCount,
      'shipDate': shipDate,
      'trackingNumber': trackingNumber,
    };
  }

  factory PackageInformationResponse.fromMap(Map<String, dynamic> map) {
    return PackageInformationResponse(
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
      driveCount: pulumi.Input.fromValue(map['driveCount'] as double),
      shipDate: pulumi.Input.fromValue(map['shipDate'] as String),
      trackingNumber: pulumi.Input.fromValue(map['trackingNumber'] as String),
    );
  }
}
