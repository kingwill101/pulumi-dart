// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobServerlessJobConfig {
  /// Whether to accept the model EULA.
  final pulumi.Input<bool?>? acceptEula;
  /// ARN of the base foundation model from the SageMaker AI Public Hub.
  final pulumi.Input<String> baseModelArn;
  /// Customization technique to apply. Valid values: `FINE_TUNING`, `DOMAIN_ADAPTION`.
  final pulumi.Input<String?>? customizationTechnique;
  /// Evaluation type. Valid values: `AUTOMATIC`, `HUMAN`, `NONE`.
  final pulumi.Input<String?>? evaluationType;
  /// ARN of the evaluator.
  final pulumi.Input<String?>? evaluatorArn;
  /// Serverless job type. Valid values: `FINE_TUNING`, `EVALUATION`, `DISTILLATION`.
  final pulumi.Input<String> jobType;
  /// Parameter-Efficient Fine-Tuning (PEFT) method. Valid values: `LORA`.
  final pulumi.Input<String?>? peft;

  /// Creates a new [TrainingJobServerlessJobConfig].
  /// [acceptEula] Whether to accept the model EULA.
  /// [baseModelArn] ARN of the base foundation model from the SageMaker AI Public Hub.
  /// [customizationTechnique] Customization technique to apply. Valid values: `FINE_TUNING`, `DOMAIN_ADAPTION`.
  /// [evaluationType] Evaluation type. Valid values: `AUTOMATIC`, `HUMAN`, `NONE`.
  /// [evaluatorArn] ARN of the evaluator.
  /// [jobType] Serverless job type. Valid values: `FINE_TUNING`, `EVALUATION`, `DISTILLATION`.
  /// [peft] Parameter-Efficient Fine-Tuning (PEFT) method. Valid values: `LORA`.
  const TrainingJobServerlessJobConfig({
    this.acceptEula,
    required this.baseModelArn,
    this.customizationTechnique,
    this.evaluationType,
    this.evaluatorArn,
    required this.jobType,
    this.peft,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': ?acceptEula,
      'baseModelArn': baseModelArn,
      'customizationTechnique': ?customizationTechnique,
      'evaluationType': ?evaluationType,
      'evaluatorArn': ?evaluatorArn,
      'jobType': jobType,
      'peft': ?peft,
    };
  }

  factory TrainingJobServerlessJobConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobServerlessJobConfig(
      acceptEula: (() { final guardedValue = map['acceptEula']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      baseModelArn: pulumi.Input.fromValue(map['baseModelArn'] as String),
      customizationTechnique: (() { final guardedValue = map['customizationTechnique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationType: (() { final guardedValue = map['evaluationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorArn: (() { final guardedValue = map['evaluatorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      peft: (() { final guardedValue = map['peft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
