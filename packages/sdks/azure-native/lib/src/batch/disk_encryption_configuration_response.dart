// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Azure Compute Gallery Image.
class DiskEncryptionConfigurationResponse {
  /// On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified.
  final pulumi.Input<List<String>?>? targets;

  /// Creates a new [DiskEncryptionConfigurationResponse].
  /// [targets] On Linux pool, only "TemporaryDisk" is supported; on Windows pool, "OsDisk" and "TemporaryDisk" must be specified.
  const DiskEncryptionConfigurationResponse({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': ?targets,
    };
  }

  factory DiskEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfigurationResponse(
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
