// ignore_for_file: unused_element, unnecessary_cast

class AppImageConfigKernelGatewayImageConfigFileSystemConfig {
  /// The default POSIX group ID (GID). If not specified, defaults to `100`. Valid values are `0` and `100`.
  final int? defaultGid;

  /// The default POSIX user ID (UID). If not specified, defaults to `1000`. Valid values are `0` and `1000`.
  final int? defaultUid;

  /// The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to `/home/sagemaker-user`.
  ///
  /// > **Note:** When specifying `default_gid` and `default_uid`, Valid value pairs are [`0`, `0`] and [`100`, `1000`].
  final String? mountPath;

  /// Creates a new [AppImageConfigKernelGatewayImageConfigFileSystemConfig].
  /// [defaultGid] The default POSIX group ID (GID). If not specified, defaults to `100`. Valid values are `0` and `100`.
  /// [defaultUid] The default POSIX user ID (UID). If not specified, defaults to `1000`. Valid values are `0` and `1000`.
  /// [mountPath] The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to `/home/sagemaker-user`.
  AppImageConfigKernelGatewayImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGid': ?defaultGid,
      'defaultUid': ?defaultUid,
      'mountPath': ?mountPath,
    };
  }

  factory AppImageConfigKernelGatewayImageConfigFileSystemConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppImageConfigKernelGatewayImageConfigFileSystemConfig(
      defaultGid: map['defaultGid'] == null ? null : map['defaultGid'] as int,
      defaultUid: map['defaultUid'] == null ? null : map['defaultUid'] as int,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}
