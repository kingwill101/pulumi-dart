// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_env_custom_job_env_custom_job_args_doc}
/// The set of arguments for EnvCustomJob.
/// {@endtemplate}
/// {@macro pulumi_arms_env_custom_job_env_custom_job_args_doc}
class EnvCustomJobArgs {
  /// The locale. The default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// Yaml configuration string.
  final pulumi.Input<String> configYaml;
  /// Custom job name.
  final pulumi.Input<String> envCustomJobName;
  /// Environment id.
  final pulumi.Input<String> environmentId;
  /// Status: run, stop.
  final pulumi.Input<String>? status;

  /// Creates a new [EnvCustomJobArgs].
  /// [aliyunLang] The locale. The default is Chinese zh | en.
  /// [configYaml] Yaml configuration string.
  /// [envCustomJobName] Custom job name.
  /// [environmentId] Environment id.
  /// [status] Status: run, stop.
  EnvCustomJobArgs({
    String? aliyunLang,
    required String configYaml,
    required String envCustomJobName,
    required String environmentId,
    String? status,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      configYaml = pulumi.Input.asInput<String>(configYaml),
      envCustomJobName = pulumi.Input.asInput<String>(envCustomJobName),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'configYaml': configYaml,
      'envCustomJobName': envCustomJobName,
      'environmentId': environmentId,
      'status': ?status,
    };
  }

  factory EnvCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return EnvCustomJobArgs(
      aliyunLang: map['aliyunLang'] == null ? null : map['aliyunLang'] as String,
      configYaml: map['configYaml'] as String,
      envCustomJobName: map['envCustomJobName'] as String,
      environmentId: map['environmentId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

