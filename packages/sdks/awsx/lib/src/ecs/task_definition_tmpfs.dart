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
  TaskDefinitionTmpfs({
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
      containerPath: map['containerPath'] == null ? null : (map['containerPath']! as String).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions']! as List).cast<String>()).input(),
      size: (map['size'] as int).input(),
    );
  }
}

