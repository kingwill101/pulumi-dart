// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionVolumeHost {
  /// Path on the host container instance that is presented to the container. If not set, ECS will create a non-persistent data volume that starts empty and is deleted after the task has finished.
  final pulumi.Input<String?>? sourcePath;

  /// Creates a new [DaemonTaskDefinitionVolumeHost].
  /// [sourcePath] Path on the host container instance that is presented to the container. If not set, ECS will create a non-persistent data volume that starts empty and is deleted after the task has finished.
  const DaemonTaskDefinitionVolumeHost({
    this.sourcePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePath': ?sourcePath,
    };
  }

  factory DaemonTaskDefinitionVolumeHost.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionVolumeHost(
      sourcePath: (() { final guardedValue = map['sourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
