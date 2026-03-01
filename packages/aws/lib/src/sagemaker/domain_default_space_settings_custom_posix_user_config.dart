// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultSpaceSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final int gid;
  /// The POSIX user ID.
  final int uid;

  /// Creates a new [DomainDefaultSpaceSettingsCustomPosixUserConfig].
  /// [gid] The POSIX group ID.
  /// [uid] The POSIX user ID.
  DomainDefaultSpaceSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'uid': uid,
    };
  }

  factory DomainDefaultSpaceSettingsCustomPosixUserConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsCustomPosixUserConfig(
      gid: map['gid'] as int,
      uid: map['uid'] as int,
    );
  }
}

