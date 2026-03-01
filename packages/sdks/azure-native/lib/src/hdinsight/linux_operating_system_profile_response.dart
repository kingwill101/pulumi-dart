// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_profile_response.dart';

/// The ssh username, password, and ssh public key.
class LinuxOperatingSystemProfileResponse {
  /// The password.
  final String? password;
  /// The SSH profile.
  final SshProfileResponse? sshProfile;
  /// The username.
  final String? username;

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
      'sshProfile': ?sshProfile == null ? null : sshProfile!.toMap(),
      'username': ?username,
    };
  }

  factory LinuxOperatingSystemProfileResponse.fromMap(Map<String, dynamic> map) {
    return LinuxOperatingSystemProfileResponse(
      password: map['password'] == null ? null : map['password'] as String,
      sshProfile: map['sshProfile'] == null ? null : SshProfileResponse.fromMap((map['sshProfile'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

