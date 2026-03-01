// ignore_for_file: unused_element, unnecessary_cast

import 'linux_container_user.dart';

/// ContainerUser represents user identity information
class ContainerUser {
  /// Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  final LinuxContainerUser? linux;

  /// Creates a new [ContainerUser].
  /// [linux] Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  ContainerUser({
    this.linux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linux': ?linux == null ? null : linux!.toMap(),
    };
  }

  factory ContainerUser.fromMap(Map<String, dynamic> map) {
    return ContainerUser(
      linux: map['linux'] == null ? null : LinuxContainerUser.fromMap((map['linux'] as Map).cast<String, dynamic>()),
    );
  }
}

