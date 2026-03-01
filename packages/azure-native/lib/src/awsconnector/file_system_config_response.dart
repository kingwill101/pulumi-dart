// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FileSystemConfig
class FileSystemConfigResponse {
  /// The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.
  final String? arn;
  /// The path where the function can access the file system, starting with ``/mnt/``.
  final String? localMountPath;

  /// Creates a new [FileSystemConfigResponse].
  /// [arn] The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.
  /// [localMountPath] The path where the function can access the file system, starting with ``/mnt/``.
  FileSystemConfigResponse({
    this.arn,
    this.localMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'localMountPath': ?localMountPath,
    };
  }

  factory FileSystemConfigResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemConfigResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      localMountPath: map['localMountPath'] == null ? null : map['localMountPath'] as String,
    );
  }
}

