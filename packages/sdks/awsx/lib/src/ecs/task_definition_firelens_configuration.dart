// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionFirelensConfiguration {
  final pulumi.Input<dynamic>? options;
  final pulumi.Input<String>? type;

  /// Creates a new [TaskDefinitionFirelensConfiguration].
  /// [options] Optional.
  /// [type] Optional.
  const TaskDefinitionFirelensConfiguration({
    this.options,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'type': ?type,
    };
  }

  factory TaskDefinitionFirelensConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionFirelensConfiguration(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
