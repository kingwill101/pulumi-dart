// ignore_for_file: unused_element, unnecessary_cast

import 'linux_container_user_patch.dart';

/// ContainerUser represents user identity information
class ContainerUserPatch {
  /// Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  final LinuxContainerUserPatch? linux;

  /// Creates a new [ContainerUserPatch].
  /// [linux] Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  ContainerUserPatch({
    this.linux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linux': ?linux == null ? null : linux!.toMap(),
    };
  }

  factory ContainerUserPatch.fromMap(Map<String, dynamic> map) {
    return ContainerUserPatch(
      linux: map['linux'] == null ? null : LinuxContainerUserPatch.fromMap((map['linux'] as Map).cast<String, dynamic>()),
    );
  }
}

