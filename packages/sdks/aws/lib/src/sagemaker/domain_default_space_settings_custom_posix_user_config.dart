// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultSpaceSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final pulumi.Input<int> gid;
  /// The POSIX user ID.
  final pulumi.Input<int> uid;

  /// Creates a new [DomainDefaultSpaceSettingsCustomPosixUserConfig].
  /// [gid] The POSIX group ID.
  /// [uid] The POSIX user ID.
  const DomainDefaultSpaceSettingsCustomPosixUserConfig({
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
      gid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['gid'])),
      uid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['uid'])),
    );
  }
}
