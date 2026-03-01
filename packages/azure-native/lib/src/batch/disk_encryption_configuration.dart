// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_target.dart';

/// The disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Azure Compute Gallery Image.
class DiskEncryptionConfiguration {
  /// On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified.
  final List<DiskEncryptionTarget>? targets;

  /// Creates a new [DiskEncryptionConfiguration].
  /// [targets] On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified.
  DiskEncryptionConfiguration({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': ?targets == null ? null : pulumi.Input.encodeList<DiskEncryptionTarget, String>(targets!, (value) => value.value),
    };
  }

  factory DiskEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfiguration(
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<DiskEncryptionTarget>(map['targets'], (value) => DiskEncryptionTarget.fromValue(value as String)),
    );
  }
}

