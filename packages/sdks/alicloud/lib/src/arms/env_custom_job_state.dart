// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvCustomJob resources.
class EnvCustomJobState {
  /// The locale. The default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// Yaml configuration string.
  final pulumi.Input<String>? configYaml;
  /// Custom job name.
  final pulumi.Input<String>? envCustomJobName;
  /// Environment id.
  final pulumi.Input<String>? environmentId;
  /// Status: run, stop.
  final pulumi.Input<String>? status;

  /// Creates a new [EnvCustomJobState].
  /// [aliyunLang] The locale. The default is Chinese zh | en.
  /// [configYaml] Yaml configuration string.
  /// [envCustomJobName] Custom job name.
  /// [environmentId] Environment id.
  /// [status] Status: run, stop.
  EnvCustomJobState({
    this.aliyunLang,
    this.configYaml,
    this.envCustomJobName,
    this.environmentId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'configYaml': ?configYaml,
      'envCustomJobName': ?envCustomJobName,
      'environmentId': ?environmentId,
      'status': ?status,
    };
  }

  factory EnvCustomJobState.fromMap(Map<String, dynamic> map) {
    return EnvCustomJobState(
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang'] as String).input(),
      configYaml: map['configYaml'] == null ? null : (map['configYaml'] as String).input(),
      envCustomJobName: map['envCustomJobName'] == null ? null : (map['envCustomJobName'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

