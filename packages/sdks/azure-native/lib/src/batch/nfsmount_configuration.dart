// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information used to connect to an NFS file system.
class NFSMountConfiguration {
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String?>? mountOptions;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final pulumi.Input<String> relativeMountPath;
  /// The URI of the file system to mount.
  final pulumi.Input<String> source;

  /// Creates a new [NFSMountConfiguration].
  /// [mountOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  /// [source] The URI of the file system to mount.
  const NFSMountConfiguration({
    this.mountOptions,
    required this.relativeMountPath,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'relativeMountPath': relativeMountPath,
      'source': source,
    };
  }

  factory NFSMountConfiguration.fromMap(Map<String, dynamic> map) {
    return NFSMountConfiguration(
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeMountPath: pulumi.Input.fromValue(map['relativeMountPath'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
