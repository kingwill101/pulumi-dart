// ignore_for_file: unused_element, unnecessary_cast


class GetCommonBandwidthPackagesPackagePublicIpAddress {
  final String allocationId;
  final String bandwidthPackageIpRelationStatus;
  final String ipAddress;

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
      allocationId: map['allocationId'] as String,
      bandwidthPackageIpRelationStatus: map['bandwidthPackageIpRelationStatus'] as String,
      ipAddress: map['ipAddress'] as String,
    );
  }
}

