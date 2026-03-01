// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultUserSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final int gid;
  /// The POSIX user ID.
  final int uid;

  /// Creates a new [DomainDefaultUserSettingsCustomPosixUserConfig].
  /// [gid] The POSIX group ID.
  /// [uid] The POSIX user ID.
  DomainDefaultUserSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'uid': uid,
    };
  }

  factory DomainDefaultUserSettingsCustomPosixUserConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomPosixUserConfig(
      gid: map['gid'] as int,
      uid: map['uid'] as int,
    );
  }
}

