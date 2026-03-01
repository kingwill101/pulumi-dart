// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvPodMonitor resources.
class EnvPodMonitorState {
  /// Language environment, default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// Yaml configuration string.
  final pulumi.Input<String>? configYaml;
  /// The name of the resource.
  final pulumi.Input<String>? envPodMonitorName;
  /// Environment id.
  final pulumi.Input<String>? environmentId;
  /// Resource namespace.
  final pulumi.Input<String>? namespace;
  /// PodMonitor status.
  final pulumi.Input<String>? status;

  /// Creates a new [EnvPodMonitorState].
  /// [aliyunLang] Language environment, default is Chinese zh | en.
  /// [configYaml] Yaml configuration string.
  /// [envPodMonitorName] The name of the resource.
  /// [environmentId] Environment id.
  /// [namespace] Resource namespace.
  /// [status] PodMonitor status.
  EnvPodMonitorState({
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<String>? configYaml,
    pulumi.Output<String>? envPodMonitorName,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? status,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      configYaml = pulumi.Input.asOptionalInput<String>(configYaml),
      envPodMonitorName = pulumi.Input.asOptionalInput<String>(envPodMonitorName),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'configYaml': ?configYaml,
      'envPodMonitorName': ?envPodMonitorName,
      'environmentId': ?environmentId,
      'namespace': ?namespace,
      'status': ?status,
    };
  }

  factory EnvPodMonitorState.fromMap(Map<String, dynamic> map) {
    return EnvPodMonitorState(
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      configYaml: map['configYaml'] == null ? null : pulumi.Output.create<String>(map['configYaml'] as String),
      envPodMonitorName: map['envPodMonitorName'] == null ? null : pulumi.Output.create<String>(map['envPodMonitorName'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

