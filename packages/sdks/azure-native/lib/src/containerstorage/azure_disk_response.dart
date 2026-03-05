// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';
import 'encryption_response.dart';

/// Azure Disk Pool Properties
class AzureDiskResponse {
  /// Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final pulumi.Input<List<DiskResponse>>? disks;
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final pulumi.Input<EncryptionResponse>? encryption;
  /// Managed resource group for the pool.
  final pulumi.Input<String> resourceGroup;
  /// Sku name
  final pulumi.Input<String>? skuName;

  /// Creates a new [AzureDiskResponse].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
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
      'disks': ?pulumi.Input.mapOptionalInputValue<List<DiskResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'resourceGroup': resourceGroup,
      'skuName': ?skuName,
    };
  }

  factory AzureDiskResponse.fromMap(Map<String, dynamic> map) {
    return AzureDiskResponse(
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskResponse>(guardedValue, (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

