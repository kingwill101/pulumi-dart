// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDevEnvironmentIde {
  final pulumi.Input<String> name;
  final pulumi.Input<String> runtime;

  /// Creates a new [GetDevEnvironmentIde].
  /// [name] Required.
  /// [runtime] Required.
  GetDevEnvironmentIde({required this.name, required this.runtime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'runtime': runtime};
  }

  factory GetDevEnvironmentIde.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentIde(
      name: pulumi.Input.fromValue(map['name'] as String),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
    );
  }
}
