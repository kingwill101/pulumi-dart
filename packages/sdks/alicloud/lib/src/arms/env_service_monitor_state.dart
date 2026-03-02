// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvServiceMonitor resources.
class EnvServiceMonitorState {
  /// Language environment, default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// Yaml configuration string.
  final pulumi.Input<String>? configYaml;
  /// The name of the resource.
  final pulumi.Input<String>? envServiceMonitorName;
  /// Environment id.
  final pulumi.Input<String>? environmentId;
  /// The namespace where the resource is located.
  final pulumi.Input<String>? namespace;
  /// Status: run, stop.
  final pulumi.Input<String>? status;

  /// Creates a new [EnvServiceMonitorState].
  /// [aliyunLang] Language environment, default is Chinese zh | en.
  /// [configYaml] Yaml configuration string.
  /// [envServiceMonitorName] The name of the resource.
  /// [environmentId] Environment id.
  /// [namespace] The namespace where the resource is located.
  /// [status] Status: run, stop.
  EnvServiceMonitorState({
    this.aliyunLang,
    this.configYaml,
    this.envServiceMonitorName,
    this.environmentId,
    this.namespace,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'configYaml': ?configYaml,
      'envServiceMonitorName': ?envServiceMonitorName,
      'environmentId': ?environmentId,
      'namespace': ?namespace,
      'status': ?status,
    };
  }

  factory EnvServiceMonitorState.fromMap(Map<String, dynamic> map) {
    return EnvServiceMonitorState(
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang']! as String).input(),
      configYaml: map['configYaml'] == null ? null : (map['configYaml']! as String).input(),
      envServiceMonitorName: map['envServiceMonitorName'] == null ? null : (map['envServiceMonitorName']! as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

