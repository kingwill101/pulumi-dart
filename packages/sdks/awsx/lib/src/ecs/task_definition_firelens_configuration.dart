// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionFirelensConfiguration {
  final pulumi.Input<dynamic>? options;
  final pulumi.Input<String>? type;

  /// Creates a new [TaskDefinitionFirelensConfiguration].
  /// [options] Optional.
  /// [type] Optional.
  TaskDefinitionFirelensConfiguration({
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
      options: map['options'] == null ? null : (map['options']!).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

