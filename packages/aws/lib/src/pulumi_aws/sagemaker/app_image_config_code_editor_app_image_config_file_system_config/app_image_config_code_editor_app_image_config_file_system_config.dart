// ignore_for_file: unused_element, unnecessary_cast

class AppImageConfigCodeEditorAppImageConfigFileSystemConfig {
  /// The default POSIX group ID (GID). If not specified, defaults to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>. Valid values are <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final int? defaultGid;

  /// The default POSIX user ID (UID). If not specified, defaults to <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>. Valid values are <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>.
  final int? defaultUid;

  /// The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to `/home/sagemaker-user`.
  ///
  /// > **Note:** When specifying <span pulumi-lang-nodejs="`defaultGid`" pulumi-lang-dotnet="`DefaultGid`" pulumi-lang-go="`defaultGid`" pulumi-lang-python="`default_gid`" pulumi-lang-yaml="`defaultGid`" pulumi-lang-java="`defaultGid`">`default_gid`</span> and <span pulumi-lang-nodejs="`defaultUid`" pulumi-lang-dotnet="`DefaultUid`" pulumi-lang-go="`defaultUid`" pulumi-lang-python="`default_uid`" pulumi-lang-yaml="`defaultUid`" pulumi-lang-java="`defaultUid`">`default_uid`</span>, Valid value pairs are [<span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>] and [<span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>, <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>].
  final String? mountPath;

  AppImageConfigCodeEditorAppImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultGidValue = defaultGid;
    if (defaultGidValue != null) {
      map['defaultGid'] = defaultGidValue;
    }
    final defaultUidValue = defaultUid;
    if (defaultUidValue != null) {
      map['defaultUid'] = defaultUidValue;
    }
    final mountPathValue = mountPath;
    if (mountPathValue != null) {
      map['mountPath'] = mountPathValue;
    }
    return map;
  }

  factory AppImageConfigCodeEditorAppImageConfigFileSystemConfig.fromMap(
      Map<String, dynamic> map) {
    return AppImageConfigCodeEditorAppImageConfigFileSystemConfig(
      defaultGid: map['defaultGid'] == null ? null : map['defaultGid'] as int,
      defaultUid: map['defaultUid'] == null ? null : map['defaultUid'] as int,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
    );
  }
}
