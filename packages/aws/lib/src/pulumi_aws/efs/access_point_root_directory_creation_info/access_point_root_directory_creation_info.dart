// ignore_for_file: unused_element, unnecessary_cast

class AccessPointRootDirectoryCreationInfo {
  /// POSIX group ID to apply to the <span pulumi-lang-nodejs="`rootDirectory`" pulumi-lang-dotnet="`RootDirectory`" pulumi-lang-go="`rootDirectory`" pulumi-lang-python="`root_directory`" pulumi-lang-yaml="`rootDirectory`" pulumi-lang-java="`rootDirectory`">`root_directory`</span>.
  final int ownerGid;

  /// POSIX user ID to apply to the <span pulumi-lang-nodejs="`rootDirectory`" pulumi-lang-dotnet="`RootDirectory`" pulumi-lang-go="`rootDirectory`" pulumi-lang-python="`root_directory`" pulumi-lang-yaml="`rootDirectory`" pulumi-lang-java="`rootDirectory`">`root_directory`</span>.
  final int ownerUid;

  /// POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.
  final String permissions;

  AccessPointRootDirectoryCreationInfo({
    required this.ownerGid,
    required this.ownerUid,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ownerGid'] = ownerGid;
    map['ownerUid'] = ownerUid;
    map['permissions'] = permissions;
    return map;
  }

  factory AccessPointRootDirectoryCreationInfo.fromMap(
      Map<String, dynamic> map) {
    return AccessPointRootDirectoryCreationInfo(
      ownerGid: map['ownerGid'] as int,
      ownerUid: map['ownerUid'] as int,
      permissions: map['permissions'] as String,
    );
  }
}
