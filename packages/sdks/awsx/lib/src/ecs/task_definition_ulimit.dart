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
  TaskDefinitionUlimit({
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
      hardLimit: (map['hardLimit'] as int).input(),
      name: (map['name'] as String).input(),
      softLimit: (map['softLimit'] as int).input(),
    );
  }
}

