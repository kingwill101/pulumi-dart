// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage properties of a server.
class Storage {
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

  /// Creates a new [Storage].
  /// [autoGrow] Flag to enable or disable the automatic growth of storage size of a server when available space is nearing zero and conditions allow for automatically growing storage size.
  /// [iops] Maximum IOPS supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  /// [storageSizeGB] Size of storage assigned to a server.
  /// [throughput] Maximum throughput supported for storage. Required when type of storage is PremiumV2_LRS or UltraSSD_LRS.
  /// [tier] Storage tier of a server.
  /// [type] Type of storage assigned to a server. Allowed values are Premium_LRS, PremiumV2_LRS, or UltraSSD_LRS. If not specified, it defaults to Premium_LRS.
  const Storage({
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

  factory Storage.fromMap(Map<String, dynamic> map) {
    return Storage(
      autoGrow: (() { final guardedValue = map['autoGrow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageSizeGB: (() { final guardedValue = map['storageSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

