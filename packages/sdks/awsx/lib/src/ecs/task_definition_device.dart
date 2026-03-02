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
      containerPath: map['containerPath'] == null ? null : (map['containerPath']! as String).input(),
      hostPath: map['hostPath'] == null ? null : (map['hostPath']! as String).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions']! as List).cast<String>()).input(),
    );
  }
}

