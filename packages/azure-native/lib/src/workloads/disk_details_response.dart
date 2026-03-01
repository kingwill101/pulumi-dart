// ignore_for_file: unused_element, unnecessary_cast

import 'disk_sku_response.dart';

/// The supported disk size details for a disk type.
class DiskDetailsResponse {
  /// The disk tier, e.g. P10, E10.
  final String? diskTier;
  /// The disk Iops.
  final double? iopsReadWrite;
  /// The maximum supported disk count.
  final double? maximumSupportedDiskCount;
  /// The disk provisioned throughput in MBps.
  final double? mbpsReadWrite;
  /// The minimum supported disk count.
  final double? minimumSupportedDiskCount;
  /// The disk size in GB.
  final double? sizeGB;
  /// The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
  final DiskSkuResponse? sku;

  /// Creates a new [DiskDetailsResponse].
  /// [diskTier] The disk tier, e.g. P10, E10.
  /// [iopsReadWrite] The disk Iops.
  /// [maximumSupportedDiskCount] The maximum supported disk count.
  /// [mbpsReadWrite] The disk provisioned throughput in MBps.
  /// [minimumSupportedDiskCount] The minimum supported disk count.
  /// [sizeGB] The disk size in GB.
  /// [sku] The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
  DiskDetailsResponse({
    this.diskTier,
    this.iopsReadWrite,
    this.maximumSupportedDiskCount,
    this.mbpsReadWrite,
    this.minimumSupportedDiskCount,
    this.sizeGB,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskTier': ?diskTier,
      'iopsReadWrite': ?iopsReadWrite,
      'maximumSupportedDiskCount': ?maximumSupportedDiskCount,
      'mbpsReadWrite': ?mbpsReadWrite,
      'minimumSupportedDiskCount': ?minimumSupportedDiskCount,
      'sizeGB': ?sizeGB,
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory DiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DiskDetailsResponse(
      diskTier: map['diskTier'] == null ? null : map['diskTier'] as String,
      iopsReadWrite: map['iopsReadWrite'] == null ? null : map['iopsReadWrite'] as double,
      maximumSupportedDiskCount: map['maximumSupportedDiskCount'] == null ? null : map['maximumSupportedDiskCount'] as double,
      mbpsReadWrite: map['mbpsReadWrite'] == null ? null : map['mbpsReadWrite'] as double,
      minimumSupportedDiskCount: map['minimumSupportedDiskCount'] == null ? null : map['minimumSupportedDiskCount'] as double,
      sizeGB: map['sizeGB'] == null ? null : map['sizeGB'] as double,
      sku: map['sku'] == null ? null : DiskSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

