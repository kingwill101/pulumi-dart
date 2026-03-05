// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information used to connect to a CIFS file system.
class CIFSMountConfigurationResponse {
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String>? mountOptions;
  /// The password to use for authentication against the CIFS file system.
  final pulumi.Input<String> password;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final pulumi.Input<String> relativeMountPath;
  /// The URI of the file system to mount.
  final pulumi.Input<String> source;
  /// The user to use for authentication against the CIFS file system.
  final pulumi.Input<String> userName;

  /// Creates a new [CIFSMountConfigurationResponse].
  /// [mountOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [password] The password to use for authentication against the CIFS file system.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  /// [source] The URI of the file system to mount.
  /// [userName] The user to use for authentication against the CIFS file system.
  CIFSMountConfigurationResponse({
    this.mountOptions,
    required this.password,
    required this.relativeMountPath,
    required this.source,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'password': password,
      'relativeMountPath': relativeMountPath,
      'source': source,
      'userName': userName,
    };
  }

  factory CIFSMountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CIFSMountConfigurationResponse(
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      relativeMountPath: pulumi.Input.fromValue(map['relativeMountPath'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

