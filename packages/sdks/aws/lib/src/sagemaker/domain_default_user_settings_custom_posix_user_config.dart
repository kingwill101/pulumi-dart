// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final pulumi.Input<int> gid;
  /// The POSIX user ID.
  final pulumi.Input<int> uid;

  /// Creates a new [DomainDefaultUserSettingsCustomPosixUserConfig].
  /// [gid] The POSIX group ID.
  /// [uid] The POSIX user ID.
  const DomainDefaultUserSettingsCustomPosixUserConfig({
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
      gid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['gid'])),
      uid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['uid'])),
    );
  }
}
