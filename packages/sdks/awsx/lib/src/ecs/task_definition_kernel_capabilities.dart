// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionKernelCapabilities {
  final pulumi.Input<List<String>>? add;
  final pulumi.Input<List<String>>? drop;

  /// Creates a new [TaskDefinitionKernelCapabilities].
  /// [add] Optional.
  /// [drop] Optional.
  TaskDefinitionKernelCapabilities({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'drop': ?drop,
    };
  }

  factory TaskDefinitionKernelCapabilities.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionKernelCapabilities(
      add: map['add'] == null ? null : ((map['add'] as List).cast<String>()).input(),
      drop: map['drop'] == null ? null : ((map['drop'] as List).cast<String>()).input(),
    );
  }
}

