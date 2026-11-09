// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionRevisionBuildConfigRuntimeConfig {
  /// Runtime identifier for the web function, e.g. `nodejs24.x`.
  final pulumi.Input<String> runtime;

  /// Creates a new [FunctionRevisionBuildConfigRuntimeConfig].
  /// [runtime] Runtime identifier for the web function, e.g. `nodejs24.x`.
  const FunctionRevisionBuildConfigRuntimeConfig({
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtime': runtime,
    };
  }

  factory FunctionRevisionBuildConfigRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionBuildConfigRuntimeConfig(
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
    );
  }
}
