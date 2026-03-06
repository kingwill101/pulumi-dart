// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverRuntime {
  /// The name of the runtime to use. Currently, the only allowed value is `APPSYNC_JS`.
  final pulumi.Input<String> name;
  /// The version of the runtime to use. Currently, the only allowed version is `1.0.0`.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [ResolverRuntime].
  /// [name] The name of the runtime to use. Currently, the only allowed value is `APPSYNC_JS`.
  /// [runtimeVersion] The version of the runtime to use. Currently, the only allowed version is `1.0.0`.
  const ResolverRuntime({
    required this.name,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory ResolverRuntime.fromMap(Map<String, dynamic> map) {
    return ResolverRuntime(
      name: pulumi.Input.fromValue(map['name'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}

