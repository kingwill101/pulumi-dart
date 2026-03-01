// ignore_for_file: unused_element, unnecessary_cast


/// Information used to connect to an NFS file system.
class NFSMountConfigurationResponse {
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final String? mountOptions;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final String relativeMountPath;
  /// The URI of the file system to mount.
  final String source;

  /// Creates a new [NFSMountConfigurationResponse].
  /// [mountOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  /// [source] The URI of the file system to mount.
  NFSMountConfigurationResponse({
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

  factory NFSMountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NFSMountConfigurationResponse(
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
      source: map['source'] as String,
    );
  }
}

