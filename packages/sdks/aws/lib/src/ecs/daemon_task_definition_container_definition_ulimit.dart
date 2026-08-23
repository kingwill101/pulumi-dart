// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionUlimit {
  /// Hard limit for the ulimit type.
  final pulumi.Input<int> hardLimit;
  /// Type of the ulimit.
  final pulumi.Input<String> name;
  /// Soft limit for the ulimit type.
  final pulumi.Input<int> softLimit;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionUlimit].
  /// [hardLimit] Hard limit for the ulimit type.
  /// [name] Type of the ulimit.
  /// [softLimit] Soft limit for the ulimit type.
  const DaemonTaskDefinitionContainerDefinitionUlimit({
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

  factory DaemonTaskDefinitionContainerDefinitionUlimit.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionUlimit(
      hardLimit: pulumi.Input.fromValue(map['hardLimit'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      softLimit: pulumi.Input.fromValue(map['softLimit'] as int),
    );
  }
}
