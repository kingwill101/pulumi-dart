// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionKernelCapabilities {
  final pulumi.Input<List<String>>? add;
  final pulumi.Input<List<String>>? drop;

  /// Creates a new [TaskDefinitionKernelCapabilities].
  /// [add] Optional.
  /// [drop] Optional.
  TaskDefinitionKernelCapabilities({this.add, this.drop});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'add': ?add, 'drop': ?drop};
  }

  factory TaskDefinitionKernelCapabilities.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionKernelCapabilities(
      add: (() {
        final guardedValue = map['add'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      drop: (() {
        final guardedValue = map['drop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
