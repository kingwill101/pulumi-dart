// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_profile_response.dart';

/// The ssh username, password, and ssh public key.
class LinuxOperatingSystemProfileResponse {
  /// The password.
  final pulumi.Input<String>? password;
  /// The SSH profile.
  final pulumi.Input<SshProfileResponse>? sshProfile;
  /// The username.
  final pulumi.Input<String>? username;

  /// Creates a new [LinuxOperatingSystemProfileResponse].
  /// [password] The password.
  /// [sshProfile] The SSH profile.
  /// [username] The username.
  LinuxOperatingSystemProfileResponse({
    this.password,
    this.sshProfile,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'sshProfile': ?pulumi.Input.mapOptionalInputValue<SshProfileResponse, Map<String, dynamic>>(sshProfile, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory LinuxOperatingSystemProfileResponse.fromMap(Map<String, dynamic> map) {
    return LinuxOperatingSystemProfileResponse(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      sshProfile: map['sshProfile'] == null ? null : (SshProfileResponse.fromMap((map['sshProfile'] as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

