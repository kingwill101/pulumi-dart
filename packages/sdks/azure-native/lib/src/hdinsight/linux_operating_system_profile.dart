// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_profile.dart';

/// The ssh username, password, and ssh public key.
class LinuxOperatingSystemProfile {
  /// The password.
  final pulumi.Input<String>? password;
  /// The SSH profile.
  final pulumi.Input<SshProfile>? sshProfile;
  /// The username.
  final pulumi.Input<String>? username;

  /// Creates a new [LinuxOperatingSystemProfile].
  /// [password] The password.
  /// [sshProfile] The SSH profile.
  /// [username] The username.
  LinuxOperatingSystemProfile({
    this.password,
    this.sshProfile,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'sshProfile': ?pulumi.Input.mapOptionalInputValue<SshProfile, Map<String, dynamic>>(sshProfile, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory LinuxOperatingSystemProfile.fromMap(Map<String, dynamic> map) {
    return LinuxOperatingSystemProfile(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      sshProfile: map['sshProfile'] == null ? null : (SshProfile.fromMap((map['sshProfile']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

