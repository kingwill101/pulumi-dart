// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_build_config_code_config.dart';
import 'function_revision_build_config_runtime_config.dart';

class FunctionRevisionBuildConfig {
  /// Code configuration. See `build_config.code_config` Block below.
  final pulumi.Input<FunctionRevisionBuildConfigCodeConfig> codeConfig;
  /// Runtime configuration for the revision. See `build_config.runtime_config` Block below.
  final pulumi.Input<FunctionRevisionBuildConfigRuntimeConfig> runtimeConfig;

  /// Creates a new [FunctionRevisionBuildConfig].
  /// [codeConfig] Code configuration. See `build_config.code_config` Block below.
  /// [runtimeConfig] Runtime configuration for the revision. See `build_config.runtime_config` Block below.
  const FunctionRevisionBuildConfig({
    required this.codeConfig,
    required this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfig': pulumi.Input.mapInputValue<FunctionRevisionBuildConfigCodeConfig, Map<String, dynamic>>(codeConfig, (value) => value.toMap()),
      'runtimeConfig': pulumi.Input.mapInputValue<FunctionRevisionBuildConfigRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
    };
  }

  factory FunctionRevisionBuildConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionBuildConfig(
      codeConfig: pulumi.Input.fromValue(FunctionRevisionBuildConfigCodeConfig.fromMap((map['codeConfig']! as Map).cast<String, dynamic>())),
      runtimeConfig: pulumi.Input.fromValue(FunctionRevisionBuildConfigRuntimeConfig.fromMap((map['runtimeConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
