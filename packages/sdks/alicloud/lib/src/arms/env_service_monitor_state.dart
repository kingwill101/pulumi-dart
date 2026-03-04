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
      aliyunLang: (() {
        final guardedValue = map['aliyunLang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configYaml: (() {
        final guardedValue = map['configYaml'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      envServiceMonitorName: (() {
        final guardedValue = map['envServiceMonitorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
