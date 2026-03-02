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
    this.aliyunLang,
    this.configYaml,
    this.envPodMonitorName,
    this.environmentId,
    this.namespace,
    this.status,
  });

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
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang']! as String).input(),
      configYaml: map['configYaml'] == null ? null : (map['configYaml']! as String).input(),
      envPodMonitorName: map['envPodMonitorName'] == null ? null : (map['envPodMonitorName']! as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

