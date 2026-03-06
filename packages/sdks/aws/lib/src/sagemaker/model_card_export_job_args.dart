// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_export_job_output_config.dart';
import 'model_card_export_job_timeouts.dart';

/// {@template pulumi_sagemaker_model_card_export_job_model_card_export_job_args_doc}
/// The set of arguments for ModelCardExportJob.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_card_export_job_model_card_export_job_args_doc}
class ModelCardExportJobArgs {
  /// Name of the model card export job.
  final pulumi.Input<String> modelCardExportJobName;
  /// Name of the model card.
  final pulumi.Input<String> modelCardName;
  final pulumi.Input<int>? modelCardVersion;
  /// Export output details. Fields are documented below.
  final pulumi.Input<ModelCardExportJobOutputConfig> outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  final pulumi.Input<String>? region;
  final pulumi.Input<ModelCardExportJobTimeouts>? timeouts;

  /// Creates a new [ModelCardExportJobArgs].
  /// [modelCardExportJobName] Name of the model card export job.
  /// [modelCardName] Name of the model card.
  /// [modelCardVersion] Optional.
  /// [outputConfig] Export output details. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  /// [timeouts] Optional.
  const ModelCardExportJobArgs({
    required this.modelCardExportJobName,
    required this.modelCardName,
    this.modelCardVersion,
    required this.outputConfig,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelCardExportJobName': modelCardExportJobName,
      'modelCardName': modelCardName,
      'modelCardVersion': ?modelCardVersion,
      'outputConfig': pulumi.Input.mapInputValue<ModelCardExportJobOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ModelCardExportJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ModelCardExportJobArgs.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobArgs(
      modelCardExportJobName: pulumi.Input.fromValue(map['modelCardExportJobName'] as String),
      modelCardName: pulumi.Input.fromValue(map['modelCardName'] as String),
      modelCardVersion: (() { final guardedValue = map['modelCardVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      outputConfig: pulumi.Input.fromValue(ModelCardExportJobOutputConfig.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelCardExportJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

