// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobDebugRuleConfiguration {
  /// Instance type to deploy for the debug rule evaluation. Valid values are SageMaker AI processing instance types.
  final pulumi.Input<String>? instanceType;
  /// Local path where debug rule output is written.
  final pulumi.Input<String>? localPath;
  /// Name of the rule configuration. Must be between 1 and 256 characters.
  final pulumi.Input<String> ruleConfigurationName;
  /// Docker image URI for the rule evaluator.
  final pulumi.Input<String> ruleEvaluatorImage;
  /// Map of parameters for the rule configuration. Maximum of 100 entries.
  final pulumi.Input<Map<String, String>>? ruleParameters;
  /// S3 URI where rule output is stored.
  final pulumi.Input<String>? s3OutputPath;
  /// Size of the storage volume for the rule evaluator, in GB.
  final pulumi.Input<int>? volumeSizeInGb;

  /// Creates a new [TrainingJobDebugRuleConfiguration].
  /// [instanceType] Instance type to deploy for the debug rule evaluation. Valid values are SageMaker AI processing instance types.
  /// [localPath] Local path where debug rule output is written.
  /// [ruleConfigurationName] Name of the rule configuration. Must be between 1 and 256 characters.
  /// [ruleEvaluatorImage] Docker image URI for the rule evaluator.
  /// [ruleParameters] Map of parameters for the rule configuration. Maximum of 100 entries.
  /// [s3OutputPath] S3 URI where rule output is stored.
  /// [volumeSizeInGb] Size of the storage volume for the rule evaluator, in GB.
  const TrainingJobDebugRuleConfiguration({
    this.instanceType,
    this.localPath,
    required this.ruleConfigurationName,
    required this.ruleEvaluatorImage,
    this.ruleParameters,
    this.s3OutputPath,
    this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'localPath': ?localPath,
      'ruleConfigurationName': ruleConfigurationName,
      'ruleEvaluatorImage': ruleEvaluatorImage,
      'ruleParameters': ?ruleParameters,
      's3OutputPath': ?s3OutputPath,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory TrainingJobDebugRuleConfiguration.fromMap(Map<String, dynamic> map) {
    return TrainingJobDebugRuleConfiguration(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleConfigurationName: pulumi.Input.fromValue(map['ruleConfigurationName'] as String),
      ruleEvaluatorImage: pulumi.Input.fromValue(map['ruleEvaluatorImage'] as String),
      ruleParameters: (() { final guardedValue = map['ruleParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      s3OutputPath: (() { final guardedValue = map['s3OutputPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
