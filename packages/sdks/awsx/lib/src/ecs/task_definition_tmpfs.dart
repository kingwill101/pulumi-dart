// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionTmpfs {
  final pulumi.Input<String>? containerPath;
  final pulumi.Input<List<String>>? mountOptions;
  final pulumi.Input<int> size;

  /// Creates a new [TaskDefinitionTmpfs].
  /// [containerPath] Optional.
  /// [mountOptions] Optional.
  /// [size] Required.
  const TaskDefinitionTmpfs({
    this.containerPath,
    this.mountOptions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'mountOptions': ?mountOptions,
      'size': size,
    };
  }

  factory TaskDefinitionTmpfs.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionTmpfs(
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

