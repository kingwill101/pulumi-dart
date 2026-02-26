// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final int gid;

  /// The POSIX user ID.
  final int uid;

  DomainDefaultUserSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gid'] = gid;
    map['uid'] = uid;
    return map;
  }

  factory DomainDefaultUserSettingsCustomPosixUserConfig.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomPosixUserConfig(
      gid: map['gid'] as int,
      uid: map['uid'] as int,
    );
  }
}
