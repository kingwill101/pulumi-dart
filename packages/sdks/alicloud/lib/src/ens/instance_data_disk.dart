// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDataDisk {
  /// Data disk type. Optional values:
  /// - cloud_efficiency: Ultra cloud disk
  /// - cloud_ssd: Full Flash cloud disk
  /// - local_hdd: local hdd disk
  /// - local_ssd: local disk ssd.
  final pulumi.Input<String>? category;

  /// Cloud Disk ID.
  final pulumi.Input<String>? diskId;

  /// The ID of the KMS key used by the cloud disk.
  final pulumi.Input<String>? encryptKeyId;

  /// Whether to encrypt the cloud disk. Value range:  true: Yes  false (default): No.
  final pulumi.Input<bool>? encrypted;

  /// Data disk size, unit: GB.
  final pulumi.Input<int>? size;

  /// Creates a new [InstanceDataDisk].
  /// [category] Data disk type. Optional values:
  /// [diskId] Cloud Disk ID.
  /// [encryptKeyId] The ID of the KMS key used by the cloud disk.
  /// [encrypted] Whether to encrypt the cloud disk. Value range:  true: Yes  false (default): No.
  /// [size] Data disk size, unit: GB.
  InstanceDataDisk({
    this.category,
    this.diskId,
    this.encryptKeyId,
    this.encrypted,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'diskId': ?diskId,
      'encryptKeyId': ?encryptKeyId,
      'encrypted': ?encrypted,
      'size': ?size,
    };
  }

  factory InstanceDataDisk.fromMap(Map<String, dynamic> map) {
    return InstanceDataDisk(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptKeyId: (() {
        final guardedValue = map['encryptKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
