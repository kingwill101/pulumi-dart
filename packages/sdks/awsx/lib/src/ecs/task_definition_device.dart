// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionDevice {
  final pulumi.Input<String>? containerPath;
  final pulumi.Input<String>? hostPath;
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [TaskDefinitionDevice].
  /// [containerPath] Optional.
  /// [hostPath] Optional.
  /// [permissions] Optional.
  TaskDefinitionDevice({
    this.containerPath,
    this.hostPath,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'hostPath': ?hostPath,
      'permissions': ?permissions,
    };
  }

  factory TaskDefinitionDevice.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionDevice(
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPath: (() { final guardedValue = map['hostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

