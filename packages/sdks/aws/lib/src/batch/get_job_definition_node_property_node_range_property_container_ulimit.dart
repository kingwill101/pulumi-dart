// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit {
  /// The hard limit for the ulimit type.
  final pulumi.Input<int> hardLimit;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;

  /// The soft limit for the ulimit type.
  final pulumi.Input<int> softLimit;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit].
  /// [hardLimit] The hard limit for the ulimit type.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [softLimit] The soft limit for the ulimit type.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit({
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

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit(
      hardLimit: pulumi.Input.fromValue(map['hardLimit'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      softLimit: pulumi.Input.fromValue(map['softLimit'] as int),
    );
  }
}
