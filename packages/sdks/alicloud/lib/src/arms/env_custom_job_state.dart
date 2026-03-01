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
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<String>? configYaml,
    pulumi.Output<String>? envCustomJobName,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? status,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      configYaml = pulumi.Input.asOptionalInput<String>(configYaml),
      envCustomJobName = pulumi.Input.asOptionalInput<String>(envCustomJobName),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      configYaml: map['configYaml'] == null ? null : pulumi.Output.create<String>(map['configYaml'] as String),
      envCustomJobName: map['envCustomJobName'] == null ? null : pulumi.Output.create<String>(map['envCustomJobName'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

