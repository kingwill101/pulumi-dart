// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionUlimit {
  final pulumi.Input<int> hardLimit;
  final pulumi.Input<String> name;
  final pulumi.Input<int> softLimit;

  /// Creates a new [TaskDefinitionUlimit].
  /// [hardLimit] Required.
  /// [name] Required.
  /// [softLimit] Required.
  const TaskDefinitionUlimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardLimit': hardLimit,
      'name': name,
      'softLimit': softLimit,
    };
  }

  factory TaskDefinitionUlimit.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionUlimit(
      hardLimit: pulumi.Input.fromValue(map['hardLimit'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      softLimit: pulumi.Input.fromValue(map['softLimit'] as int),
    );
  }
}

