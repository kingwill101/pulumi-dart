// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage properties of a server.
class StorageResponse {
  /// Flag to enable or disable the automatic growth of storage size of a server when available space is nearing zero and conditions allow for automatically growing storage size.
  final pulumi.Input<String>? autoGrow;
  /// Maximum IOPS supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  final pulumi.Input<int>? iops;
  /// Size of storage assigned to a server.
  final pulumi.Input<int>? storageSizeGB;
  /// Maximum throughput supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  final pulumi.Input<int>? throughput;
  /// Storage tier of a server.
  final pulumi.Input<String>? tier;
  /// Type of storage assigned to a server. Allowed values are Premium_LRS, PremiumV2_LRS, or UltraSSD_LRS. If not specified, it defaults to Premium_LRS.
  final pulumi.Input<String>? type;

  /// Creates a new [StorageResponse].
  /// [autoGrow] Flag to enable or disable the automatic growth of storage size of a server when available space is nearing zero and conditions allow for automatically growing storage size.
  /// [iops] Maximum IOPS supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  /// [storageSizeGB] Size of storage assigned to a server.
  /// [throughput] Maximum throughput supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  /// [tier] Storage tier of a server.
  /// [type] Type of storage assigned to a server. Allowed values are Premium_LRS, PremiumV2_LRS, or UltraSSD_LRS. If not specified, it defaults to Premium_LRS.
  StorageResponse({
    this.autoGrow,
    this.iops,
    this.storageSizeGB,
    this.throughput,
    this.tier,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrow': ?autoGrow,
      'iops': ?iops,
      'storageSizeGB': ?storageSizeGB,
      'throughput': ?throughput,
      'tier': ?tier,
      'type': ?type,
    };
  }

  factory StorageResponse.fromMap(Map<String, dynamic> map) {
    return StorageResponse(
      autoGrow: map['autoGrow'] == null ? null : (map['autoGrow']! as String).input(),
      iops: map['iops'] == null ? null : (map['iops']! as int).input(),
      storageSizeGB: map['storageSizeGB'] == null ? null : (map['storageSizeGB']! as int).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

