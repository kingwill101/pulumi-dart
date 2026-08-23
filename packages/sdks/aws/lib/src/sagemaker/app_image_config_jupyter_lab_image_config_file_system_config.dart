// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppImageConfigJupyterLabImageConfigFileSystemConfig {
  /// The default POSIX group ID (GID). If not specified, defaults to `100`. Valid values are `0` and `100`.
  final pulumi.Input<int>? defaultGid;
  /// The default POSIX user ID (UID). If not specified, defaults to `1000`. Valid values are `0` and `1000`.
  final pulumi.Input<int>? defaultUid;
  /// The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to `/home/sagemaker-user`.
  ///
  /// &gt; **Note:** When specifying `defaultGid` and `defaultUid`, Valid value pairs are [`0`, `0`] and [`100`, `1000`].
  final pulumi.Input<String>? mountPath;

  /// Creates a new [AppImageConfigJupyterLabImageConfigFileSystemConfig].
  /// [defaultGid] The default POSIX group ID (GID). If not specified, defaults to `100`. Valid values are `0` and `100`.
  /// [defaultUid] The default POSIX user ID (UID). If not specified, defaults to `1000`. Valid values are `0` and `1000`.
  /// [mountPath] The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to `/home/sagemaker-user`.
  const AppImageConfigJupyterLabImageConfigFileSystemConfig({
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

  factory AppImageConfigJupyterLabImageConfigFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigJupyterLabImageConfigFileSystemConfig(
      defaultGid: (() { final guardedValue = map['defaultGid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultUid: (() { final guardedValue = map['defaultUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
