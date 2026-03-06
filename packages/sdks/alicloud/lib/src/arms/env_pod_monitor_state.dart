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
  const EnvPodMonitorState({
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
      aliyunLang: (() { final guardedValue = map['aliyunLang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configYaml: (() { final guardedValue = map['configYaml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envPodMonitorName: (() { final guardedValue = map['envPodMonitorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

