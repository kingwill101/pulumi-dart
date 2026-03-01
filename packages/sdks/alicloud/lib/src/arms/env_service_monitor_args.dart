// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_env_service_monitor_env_service_monitor_args_doc}
/// The set of arguments for EnvServiceMonitor.
/// {@endtemplate}
/// {@macro pulumi_arms_env_service_monitor_env_service_monitor_args_doc}
class EnvServiceMonitorArgs {
  /// Language environment, default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// Yaml configuration string.
  final pulumi.Input<String> configYaml;
  /// Environment id.
  final pulumi.Input<String> environmentId;

  /// Creates a new [EnvServiceMonitorArgs].
  /// [aliyunLang] Language environment, default is Chinese zh | en.
  /// [configYaml] Yaml configuration string.
  /// [environmentId] Environment id.
  EnvServiceMonitorArgs({
    pulumi.Output<String>? aliyunLang,
    required pulumi.Output<String> configYaml,
    required pulumi.Output<String> environmentId,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      configYaml = pulumi.Input.asInput<String>(configYaml),
      environmentId = pulumi.Input.asInput<String>(environmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'configYaml': configYaml,
      'environmentId': environmentId,
    };
  }

  factory EnvServiceMonitorArgs.fromMap(Map<String, dynamic> map) {
    return EnvServiceMonitorArgs(
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      configYaml: pulumi.Output.create<String>(map['configYaml'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
    );
  }
}

