// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';
import 'encryption_response.dart';

/// Azure Disk Pool Properties
class AzureDiskResponse {
  /// Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final List<DiskResponse>? disks;
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final EncryptionResponse? encryption;
  /// Managed resource group for the pool.
  final String resourceGroup;
  /// Sku name
  final String? skuName;

  /// Creates a new [AzureDiskResponse].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  /// [encryption] Encryption specifies the encryption configuration for the Azure Disk pool
  /// [resourceGroup] Managed resource group for the pool.
  /// [skuName] Sku name
  AzureDiskResponse({
    this.disks,
    this.encryption,
    required this.resourceGroup,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'resourceGroup': resourceGroup,
      'skuName': ?skuName,
    };
  }

  factory AzureDiskResponse.fromMap(Map<String, dynamic> map) {
    return AzureDiskResponse(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DiskResponse>(map['disks'], (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      resourceGroup: map['resourceGroup'] as String,
      skuName: map['skuName'] == null ? null : map['skuName'] as String,
    );
  }
}

