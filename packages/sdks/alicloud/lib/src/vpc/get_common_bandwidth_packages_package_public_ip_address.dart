// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCommonBandwidthPackagesPackagePublicIpAddress {
  final pulumi.Input<String> allocationId;
  final pulumi.Input<String> bandwidthPackageIpRelationStatus;
  final pulumi.Input<String> ipAddress;

  /// Creates a new [GetCommonBandwidthPackagesPackagePublicIpAddress].
  /// [allocationId] Required.
  /// [bandwidthPackageIpRelationStatus] Required.
  /// [ipAddress] Required.
  GetCommonBandwidthPackagesPackagePublicIpAddress({
    required this.allocationId,
    required this.bandwidthPackageIpRelationStatus,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'bandwidthPackageIpRelationStatus': bandwidthPackageIpRelationStatus,
      'ipAddress': ipAddress,
    };
  }

  factory GetCommonBandwidthPackagesPackagePublicIpAddress.fromMap(Map<String, dynamic> map) {
    return GetCommonBandwidthPackagesPackagePublicIpAddress(
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      bandwidthPackageIpRelationStatus: pulumi.Input.fromValue(map['bandwidthPackageIpRelationStatus'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}

