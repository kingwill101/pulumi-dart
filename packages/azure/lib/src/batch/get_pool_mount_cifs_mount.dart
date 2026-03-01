// ignore_for_file: unused_element, unnecessary_cast


class GetPoolMountCifsMount {
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final String mountOptions;
  /// The password for the user account.
  final String password;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final String relativeMountPath;
  /// The URI of the file system to mount.
  final String source;
  /// The user to use for authentication against the CIFS file system.
  final String userName;

  /// Creates a new [GetPoolMountCifsMount].
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [password] The password for the user account.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  /// [source] The URI of the file system to mount.
  /// [userName] The user to use for authentication against the CIFS file system.
  GetPoolMountCifsMount({
    required this.mountOptions,
    required this.password,
    required this.relativeMountPath,
    required this.source,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': mountOptions,
      'password': password,
      'relativeMountPath': relativeMountPath,
      'source': source,
      'userName': userName,
    };
  }

  factory GetPoolMountCifsMount.fromMap(Map<String, dynamic> map) {
    return GetPoolMountCifsMount(
      mountOptions: map['mountOptions'] as String,
      password: map['password'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
      source: map['source'] as String,
      userName: map['userName'] as String,
    );
  }
}

