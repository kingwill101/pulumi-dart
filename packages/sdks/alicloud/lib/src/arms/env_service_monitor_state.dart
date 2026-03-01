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
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<String>? configYaml,
    pulumi.Output<String>? envServiceMonitorName,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? status,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      configYaml = pulumi.Input.asOptionalInput<String>(configYaml),
      envServiceMonitorName = pulumi.Input.asOptionalInput<String>(envServiceMonitorName),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      configYaml: map['configYaml'] == null ? null : pulumi.Output.create<String>(map['configYaml'] as String),
      envServiceMonitorName: map['envServiceMonitorName'] == null ? null : pulumi.Output.create<String>(map['envServiceMonitorName'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

